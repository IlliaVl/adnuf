import 'package:injectable/injectable.dart';

import '../abstracts/network/net_client.dart';

/// Net client for Funda API
@Injectable(as: NetClient)
class FundaNetClient extends NetClient {
  static const String _baseUrl = 'https://partnerapi.funda.nl';

  /// Creates new [FundaNetClient]
  FundaNetClient()
      : super(
          baseUrl: _baseUrl,
        );
}
