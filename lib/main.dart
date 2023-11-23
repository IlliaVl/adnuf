import 'package:flutter/material.dart';

import 'config/injection.dart';
import 'my_app.dart';

void main() {
  configureDependencies();
  runApp(
    const MyApp(),
  );
}
