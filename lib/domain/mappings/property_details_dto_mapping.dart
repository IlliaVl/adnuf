import '../../data/dtos/property_details_dto.dart';
import '../models/property_details.dart';
import '../models/property_image.dart';

/// Extension that provides mappings for [PropertyDetailsDTO].
extension PropertyDetailsDTOMapping on PropertyDetailsDTO {
  /// Maps into a [Art].
  PropertyDetails toPropertyDetails() => PropertyDetails(
        id: internalId,
        address: adres,
        fullDescription: volledigeOmschrijving ?? '',
        images: media.where((media) => media.categorie == 1).map((media) {
          final mediaItem = media.mediaItems
              .firstWhere((mediaItem) => mediaItem.category == 7);
          return PropertyImage(
            width: mediaItem.width,
            height: mediaItem.height,
            imageUrl: mediaItem.url,
          );
        }).toList(),
        latitude: wgs84Y,
        longitude: wgs84X,
      );
}
