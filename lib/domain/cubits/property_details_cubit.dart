import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../abstracts/repositories/property_repository.dart';
import '../models/property_error.dart';
import 'property_details_state.dart';

/// Cubit responsible for retrieving the list of customer [Property].
@injectable
class PropertyDetailsCubit extends Cubit<PropertyDetailsState> {
  final PropertyRepositoryInterface _repository;

  /// Creates a new instance of [PropertyDetailsCubit]
  PropertyDetailsCubit({
    required PropertyRepositoryInterface repository,
  })  : _repository = repository,
        super(const PropertyDetailsState());

  /// Loads property details for provided [propertyId].
  Future<void> getPropertyDetails({required String propertyId}) async {
    emit(
      state.copyWith(
        busy: true,
        error: PropertyDetailsStateErrors.none,
      ),
    );

    try {
      final propertyDetails = await _repository.getPropertyDetails(
        id: propertyId,
      );

      emit(
        state.copyWith(
          propertyDetails: propertyDetails,
          busy: false,
          error: PropertyDetailsStateErrors.none,
        ),
      );
    } on PropertyException {
      emit(
        state.copyWith(
          busy: false,
          error: PropertyDetailsStateErrors.generic,
        ),
      );
    }
  }
}
