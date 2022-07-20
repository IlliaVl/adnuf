import 'package:bloc_test/bloc_test.dart';
import 'package:funda/business_layer/cubits/property_details_cubit.dart';
import 'package:funda/business_layer/cubits/property_details_state.dart';
import 'package:funda/data_layer/models/property_details.dart';
import 'package:funda/data_layer/models/property_error.dart';
import 'package:funda/data_layer/repositories/property_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAuditRepository extends Mock implements PropertyRepositoryInterface {}

late MockAuditRepository _repository;

const _propertyIdSuccess = 'SuccessNumber';
const _propertyIdFailure = 'FailureNumber';

const _propertySuccess = PropertyDetails(
  id: _propertyIdSuccess,
  images: [],
  address: '',
  fullDescription: '',
  latitude: 0.0,
  longitude: 0.0,
);

void main() {
  setUpAll(() {
    _repository = MockAuditRepository();

    when(
      () => _repository.getPropertyDetails(id: _propertyIdSuccess),
    ).thenAnswer(
      (_) async => _propertySuccess,
    );

    when(
      () => _repository.getPropertyDetails(id: _propertyIdFailure),
    ).thenThrow(
      const PropertyException(
        PropertyExceptionType.network,
        'Some generic error',
      ),
    );
  });

  blocTest<PropertyDetailsCubit, PropertyDetailsState>(
    'Starts on empty state',
    build: () => PropertyDetailsCubit(repository: _repository),
    verify: (c) => expect(
      c.state,
      const PropertyDetailsState(),
    ),
  );

  blocTest<PropertyDetailsCubit, PropertyDetailsState>(
    'Should load property',
    build: () => PropertyDetailsCubit(repository: _repository),
    act: (c) => c.getPropertyDetails(propertyId: _propertyIdSuccess),
    expect: () => [
      const PropertyDetailsState(
        busy: true,
        error: PropertyDetailsStateErrors.none,
      ),
      const PropertyDetailsState(
        propertyDetails: _propertySuccess,
        busy: false,
        error: PropertyDetailsStateErrors.none,
      ),
    ],
    verify: (c) => verify(
      () => _repository.getPropertyDetails(id: _propertyIdSuccess),
    ).called(1),
  );

  blocTest<PropertyDetailsCubit, PropertyDetailsState>(
    'Should handle exceptions',
    build: () => PropertyDetailsCubit(repository: _repository),
    act: (c) => c.getPropertyDetails(propertyId: _propertyIdFailure),
    expect: () => [
      const PropertyDetailsState(
        busy: true,
        error: PropertyDetailsStateErrors.none,
      ),
      const PropertyDetailsState(
        busy: false,
        error: PropertyDetailsStateErrors.generic,
      ),
    ],
    verify: (c) => verify(
      () => _repository.getPropertyDetails(id: _propertyIdFailure),
    ).called(1),
  );
}
