import 'dart:collection';

import 'package:equatable/equatable.dart';

import '../models/property.dart';

abstract class PropertyState extends Equatable {}

/// Represents the initial state of [PropertyCubit]
class InitialPropertyState extends PropertyState {
  @override
  List<Object> get props => [];
}

/// Represents the loading state of [PropertyCubit]
class LoadingPropertyState extends PropertyState {
  @override
  List<Object> get props => [];
}

/// Represents the loaded state of [PropertyCubit]
class LoadedPropertyState extends PropertyState {
  /// List of [Property]s
  final UnmodifiableListView<Property> properties;

  /// Creates a new instance of [LoadedPropertyState]
  LoadedPropertyState({
    Iterable<Property> properties = const [],
  }) : properties = UnmodifiableListView(properties);

  @override
  List<Object> get props => [
        properties,
      ];
}

/// Represents the error state of [PropertyCubit]
class ErrorPropertyState extends PropertyState {
  /// Error message for the last occurred error
  final PropertyStateErrors error;

  /// Creates a new instance of [PropertyStateErrors]
  ErrorPropertyState({
    this.error = PropertyStateErrors.none,
  });

  @override
  List<Object> get props => [
        error,
      ];
}

/// Enum for all possible errors for [PropertyCubit]
enum PropertyStateErrors {
  /// No errors
  none,

  /// Generic error
  generic,
}
