import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../config/env.dart';
import '../models/dtos/properties_dto.dart';
import '../models/dtos/property_details_dto.dart';
import '../models/property_error.dart';

/// Provides data related to property objects from Funda API.
class FundaProvider {
  static final _apiKey = Env.fundaApiKey;
  static const _baseUrl = 'partnerapi.funda.nl';
  final http.Client _httpClient;

  /// Creates new [FundaProvider].
  FundaProvider({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Uri _getDetailUrl({
    String? path,
    Map<String, dynamic>? parameters,
  }) =>
      Uri.https(
        _baseUrl,
        '/feeds/Aanbod.svc/json/$path',
        {
          ...?parameters,
        },
      );

  /// Returns an [PropertyDetailsDTO]
  ///https://partnerapi.funda.nl/feeds/Aanbod.svc/json/detail/ac1b0b1572524640a0ecc54de453ea9f/koop/76bfe380-93d8-4488-a90c-9ea0f060e11c/
  Future<PropertyDetailsDTO> getProperty({
    String id = '76bfe380-93d8-4488-a90c-9ea0f060e11c',
  }) async {
    final response = await _httpClient.get(
      _getDetailUrl(path: 'detail/$_apiKey/koop/$id/'),
    );
    if (response.statusCode != 200) {
      throw const PropertyException(
        PropertyExceptionType.network,
      );
    }
    try {
      final bodyJson = jsonDecode(response.body) as Map<String, dynamic>;
      return PropertyDetailsDTO.fromJson(bodyJson);
    } catch (_) {
      throw const PropertyException(
        PropertyExceptionType.parsing,
      );
    }
  }

  /// Returns an [PropertyDetailsDTO]
  ///https://partnerapi.funda.nl/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/tuin/&page={0}&pagesize=25
  Future<PropertiesDTO> getProperties() async {
    final response = await _httpClient.get(
      _getDetailUrl(path: '$_apiKey/', parameters: {
        'type': 'koop',
        'zo': '/amsterdam/tuin/',
        'page': '{0}',
        'pagesize': '25',
      }),
    );
    if (response.statusCode != 200) {
      throw const PropertyException(
        PropertyExceptionType.network,
      );
    }
    try {
      final bodyJson = jsonDecode(response.body) as Map<String, dynamic>;
      return PropertiesDTO.fromJson(bodyJson);
    } catch (_) {
      throw const PropertyException(
        PropertyExceptionType.parsing,
      );
    }
  }

  Uri _getDetailUrl1({
    String? path,
    required String id,
    Map<String, dynamic>? parameters,
  }) =>
      Uri.https(
        _baseUrl,
        '/feeds/Aanbod.svc/json/detail/$_apiKey/koop/$id/',
        {
          ...?parameters,
        },
      );

  /// Returns an [PropertyDetailsDTO]
  ///https://partnerapi.funda.nl/feeds/Aanbod.svc/json/detail/ac1b0b1572524640a0ecc54de453ea9f/koop/76bfe380-93d8-4488-a90c-9ea0f060e11c/
  Future<PropertyDetailsDTO> getProperty1({
    String id = '76bfe380-93d8-4488-a90c-9ea0f060e11c',
  }) async {
    final response = await _httpClient.get(
      _getDetailUrl1(id: id),
    );
    if (response.statusCode != 200) {
      throw const PropertyException(
        PropertyExceptionType.network,
      );
    }
    try {
      final bodyJson = jsonDecode(response.body) as Map<String, dynamic>;
      return PropertyDetailsDTO.fromJson(bodyJson);
    } catch (_) {
      throw const PropertyException(
        PropertyExceptionType.parsing,
      );
    }
  }
}
