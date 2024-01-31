import 'package:bloc_test/bloc_test.dart';
import 'package:funda/domain/abstracts/repositories/property_repository.dart';
import 'package:funda/domain/cubits/property_cubit.dart';
import 'package:funda/domain/cubits/property_state.dart';
import 'package:funda/domain/models/property.dart';
import 'package:funda/domain/models/property_error.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAuditRepository extends Mock implements PropertyRepositoryInterface {}

late MockAuditRepository _repository;
final _propertiesList = <Property>[];
const _total = 100;

void main() {
  for (var i = 0; i < _total; i++) {
    _propertiesList.add(
      Property(id: 'objectId$i'),
    );
  }

  setUpAll(() {
    _repository = MockAuditRepository();

    when(
      () => _repository.getProperties(),
    ).thenAnswer(
      (_) async => _propertiesList,
    );
  });

  blocTest<PropertyCubit, PropertyState>(
    'Starts on empty state',
    build: () => PropertyCubit(repository: _repository),
    verify: (c) => expect(
      c.state,
      InitialPropertyState(),
    ),
  );

  blocTest<PropertyCubit, PropertyState>(
    'Should load properties',
    build: () => PropertyCubit(repository: _repository),
    act: (c) => c.getProperties(),
    expect: () => [
      LoadingPropertyState(),
      LoadedPropertyState(properties: _propertiesList),
    ],
    verify: (c) => verify(
      () => _repository.getProperties(),
    ).called(1),
  );

  blocTest<PropertyCubit, PropertyState>(
    'Should handle exceptions',
    build: () => PropertyCubit(repository: _repository),
    setUp: () => when(
      () => _repository.getProperties(),
    ).thenThrow(
      const PropertyException(
        PropertyExceptionType.network,
        'Some generic error',
      ),
    ),
    act: (c) => c.getProperties(),
    expect: () => [
      LoadingPropertyState(),
      ErrorPropertyState(error: PropertyStateErrors.generic),
    ],
    verify: (c) => verify(
      () => _repository.getProperties(),
    ).called(1),
  );
}
