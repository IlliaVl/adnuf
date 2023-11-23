import '../../domain/models/property_error.dart';
import '../abstracts/network/net_client.dart';
import '../dtos/properties_dto.dart';
import '../dtos/property_details_dto.dart';

/// Provides data related to property objects from Funda API.
class FundaProvider {
  final String _apiKey;

  /// The NetClient to use for the network requests.
  final NetClient netClient;

  /// Creates new [FundaProvider].
  FundaProvider(
    this._apiKey, {
    required this.netClient,
  });

  String _getUrlString(String path) => '/feeds/Aanbod.svc/json/$path';

  /// Returns an [PropertyDetailsDTO]
  ///https://partnerapi.funda.nl/feeds/Aanbod.svc/json/detail/ac1b0b1572524640a0ecc54de453ea9f/koop/76bfe380-93d8-4488-a90c-9ea0f060e11c/
  Future<PropertyDetailsDTO> getProperty({
    String id = '76bfe380-93d8-4488-a90c-9ea0f060e11c',
  }) async {
    final response = await netClient.call(
      _getUrlString('detail/$_apiKey/koop/$id/'),
    );
    if (response.statusCode != 200) {
      throw const PropertyException(
        PropertyExceptionType.network,
      );
    }
    try {
      return PropertyDetailsDTO.fromJson(response.data);
    } catch (_) {
      throw const PropertyException(
        PropertyExceptionType.parsing,
      );
    }
  }

  /// Returns an [PropertyDetailsDTO]
  ///https://partnerapi.funda.nl/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/tuin/&page={0}&pagesize=25
  Future<PropertiesDTO> getProperties() async {
    final response = await netClient.call(
      _getUrlString(_apiKey),
      queryParameters: {
        'type': 'koop',
        'zo': '/amsterdam/tuin/',
        'page': '{0}',
        'pagesize': '25',
      },
    );
    if (response.statusCode != 200) {
      throw const PropertyException(
        PropertyExceptionType.network,
      );
    }
    try {
      return PropertiesDTO.fromJson(response.data);
    } catch (_) {
      throw const PropertyException(
        PropertyExceptionType.parsing,
      );
    }
  }
}
