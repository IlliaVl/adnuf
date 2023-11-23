import '../abstracts/network/net_client.dart';

/// Net client for Funda API
class FundaNetClient extends NetClient {
  static const String _baseUrl = 'https://partnerapi.funda.nl';

  /// Creates new [FundaNetClient]
  FundaNetClient()
      : super(
          baseUrl: _baseUrl,
        );
}
