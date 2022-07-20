import 'package:funda/data_layer/mappings/properties_dto_mapping.dart';
import 'package:funda/data_layer/mappings/property_details_dto_mapping.dart';

import '../models/property.dart';
import '../models/property_details.dart';
import '../providers/funda_provider.dart';
import 'property_repository.dart';

/// Handles all the properties data
class FundaRepository implements PropertyRepositoryInterface {
  final FundaProvider _fundaProvider;

  /// Creates a new [FundaRepository] instance
  FundaRepository(this._fundaProvider);

  /// Retrieves properties.
  @override
  Future<List<Property>> getProperties() async {
    final dtos = await _fundaProvider.getProperties();
    return dtos.toList();
  }

  /// Retrieves property details for provided property [id].
  @override
  Future<PropertyDetails> getPropertyDetails({
    required String id,
  }) async {
    final dto = await _fundaProvider.getProperty(id: id);
    return dto.toPropertyDetails();
  }
}
