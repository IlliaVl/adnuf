import '../../data/dtos/property_dto.dart';
import '../models/property.dart';

/// Extension that provides mappings for [PropertyDTO].
extension PropertyDTOMapping on PropertyDTO {
  /// Maps into a [Art].
  Property toProperty() => Property(
        id: id,
        address: adres,
        imageUrl: fotoLarge,
      );
}
