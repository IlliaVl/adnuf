import 'package:equatable/equatable.dart';

import '../../data_layer/models/property_details.dart';

/// Represents the state of [PropertyDetailsCubit]
class PropertyDetailsState extends Equatable {
  /// True if the cubit is processing something
  final bool busy;

  /// Property details
  final PropertyDetails? propertyDetails;

  /// Error message for the last occurred error
  final PropertyDetailsStateErrors error;

  /// Creates a new instance of [PropertyDetailsState]
  const PropertyDetailsState({
    this.propertyDetails,
    this.busy = false,
    this.error = PropertyDetailsStateErrors.none,
  });

  @override
  List<Object?> get props => [
        busy,
        propertyDetails,
        error,
      ];

  /// Creates a new instance of [PropertyDetailsState] based on the current instance
  PropertyDetailsState copyWith({
    bool? busy,
    PropertyDetails? propertyDetails,
    PropertyDetailsStateErrors? error,
    String? customerId,
  }) {
    return PropertyDetailsState(
      busy: busy ?? this.busy,
      propertyDetails: propertyDetails ?? this.propertyDetails,
      error: error ?? this.error,
    );
  }
}

/// Enum for all possible errors for [PropertyDetailsCubit]
enum PropertyDetailsStateErrors {
  /// No errors
  none,

  /// Generic error
  generic,
}
