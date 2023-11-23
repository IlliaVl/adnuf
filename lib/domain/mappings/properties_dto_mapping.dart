import '../../data/dtos/properties_dto.dart';
import '../models/property.dart';
import 'property_dto_mapping.dart';

/// Extension that provides mappings for [PropertiesDTO].
extension PropertiesDTOMapping on PropertiesDTO {
  /// Maps into list of [Art]s.
  List<Property> toList() =>
      objects
          ?.map((
            propertyDTO,
          ) =>
              propertyDTO.toProperty())
          .toList() ??
      [];
}
