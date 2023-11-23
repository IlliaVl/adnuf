import 'package:flutter/material.dart';

import 'config/env.dart';
import 'data_layer/network/funda_net_client.dart';
import 'data_layer/providers/funda_provider.dart';
import 'data_layer/repositories/funda_repository.dart';
import 'my_app.dart';

void main() {
  runApp(MyApp(
    propertyRepository: FundaRepository(
      FundaProvider(
        Env.fundaApiKey,
        netClient: FundaNetClient(),
      ),
    ),
  ));
}
