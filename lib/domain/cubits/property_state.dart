import 'dart:collection';

import 'package:equatable/equatable.dart';

import '../models/property.dart';

/// Represents the state of [PropertyCubit]
class PropertyState extends Equatable {
  /// True if the cubit is processing something.
  final bool busy;

  /// List of [Property]s
  final UnmodifiableListView<Property> properties;

  /// Error message for the last occurred error
  final PropertyStateErrors error;

  /// Creates a new instance of [PropertyState]
  PropertyState({
    this.busy = false,
    Iterable<Property> properties = const [],
    this.error = PropertyStateErrors.none,
  }) : properties = UnmodifiableListView(properties);

  @override
  List<Object?> get props => [
        busy,
        properties,
        error,
      ];

  /// Creates a new instance of [PropertyState] based on the current instance
  PropertyState copyWith({
    bool? busy,
    Iterable<Property>? properties,
    PropertyStateErrors? error,
  }) {
    return PropertyState(
      busy: busy ?? this.busy,
      properties: properties ?? this.properties,
      error: error ?? this.error,
    );
  }
}

/// Enum for all possible errors for [PropertyCubit]
enum PropertyStateErrors {
  /// No errors
  none,

  /// Generic error
  generic,
}
