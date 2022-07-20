import 'package:funda/data_layer/models/dtos/property_dto.dart';

/// Data transfer object for list of [PropertyDTO] objects.
class PropertiesDTO {
  /// Creates new [PropertiesDTO]
  PropertiesDTO({
    this.objects,
  });

  /// List of [PropertyDTO] objects
  final List<PropertyDTO>? objects;

  /// Creates a new [PropertiesDTO] from the given JSON.
  factory PropertiesDTO.fromJson(Map<String, dynamic> json) => PropertiesDTO(
        objects: json["Objects"] == null
            ? null
            : List<PropertyDTO>.from(
                json["Objects"]?.map(
                  (x) => PropertyDTO.fromJson(x),
                ),
              ),
      );
}
