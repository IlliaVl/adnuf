import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../abstracts/repositories/property_repository.dart';
import '../models/property_error.dart';
import 'property_state.dart';

/// Cubit responsible for retrieving the list of [Property].
@injectable
class PropertyCubit extends Cubit<PropertyState> {
  final PropertyRepositoryInterface _repository;

  /// Creates a new instance of [PropertyCubit]
  PropertyCubit({
    required PropertyRepositoryInterface repository,
  })  : _repository = repository,
        super(PropertyState());

  /// Loads all Properties.
  Future<void> getProperties({
    bool loadMore = false,
  }) async {
    emit(
      state.copyWith(
        busy: true,
        error: PropertyStateErrors.none,
      ),
    );

    try {
      final properties = await _repository.getProperties();

      emit(
        state.copyWith(
          properties: properties,
          busy: false,
          error: PropertyStateErrors.none,
        ),
      );
    } on PropertyException {
      emit(
        state.copyWith(
          busy: true,
          error: PropertyStateErrors.generic,
        ),
      );
    }
  }
}
