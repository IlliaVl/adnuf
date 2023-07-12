import 'package:flutter/material.dart';

import 'data_layer/providers/funda_provider.dart';
import 'data_layer/repositories/funda_repository.dart';
import 'my_app.dart';

void main() {
  runApp(MyApp(
    propertyRepository: FundaRepository(
      FundaProvider(),
    ),
  ));
}
