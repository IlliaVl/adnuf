import 'package:injectable/injectable.dart';

import '../data/abstracts/network/net_client.dart';
import '../data/providers/funda_provider.dart';
import 'env.dart';

@module
abstract class AppModule {
  @singleton
  FundaProvider propertyProvider(
    NetClient netClient,
  ) =>
      FundaProvider(
        Env.fundaApiKey,
        netClient: netClient,
      );
}
