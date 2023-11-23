import 'package:injectable/injectable.dart';

import '../../data/providers/funda_provider.dart';
import '../abstracts/repositories/property_repository.dart';
import '../mappings/properties_dto_mapping.dart';
import '../mappings/property_details_dto_mapping.dart';
import '../models/property.dart';
import '../models/property_details.dart';

/// Handles all the properties data
@Injectable(as: PropertyRepositoryInterface)
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
