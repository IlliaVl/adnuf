import '../../models/property.dart';
import '../../models/property_details.dart';

/// Abstract definition for the property repository.
abstract class PropertyRepositoryInterface {
  /// Retrieves properties.
  Future<List<Property>> getProperties();

  /// Retrieves property details for provided property [id].
  Future<PropertyDetails> getPropertyDetails({
    required String id,
  });
}
