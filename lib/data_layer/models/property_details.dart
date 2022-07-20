import 'package:equatable/equatable.dart';
import 'package:funda/data_layer/models/property_image.dart';

/// Keeps the detailed data of a Property object.
class PropertyDetails extends Equatable {
  /// Id
  final String id;

  /// List of images
  final List<PropertyImage> images;

  /// Address
  final String address;

  /// Full description
  final String fullDescription;

  /// Latitude
  final double? latitude;

  /// Longitude
  final double? longitude;

  /// Creates new [PropertyDetails]
  const PropertyDetails({
    required this.id,
    required this.images,
    required this.address,
    required this.fullDescription,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object?> get props => [
        id,
        images,
        address,
        fullDescription,
        latitude,
        longitude,
      ];
}
