import 'package:bloc/bloc.dart';

import '../../data_layer/models/property_error.dart';
import '../../data_layer/repositories/property_repository.dart';
import 'property_state.dart';

/// Cubit responsible for retrieving the list of [Property].
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
