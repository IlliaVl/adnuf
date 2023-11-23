import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/injection.dart';
import 'domain/cubits/property_cubit.dart';
import 'domain/cubits/property_details_cubit.dart';
import 'presentation/properties_screen.dart';

/// The application widget
class MyApp extends StatelessWidget {
  /// Creates the [MyApp]
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<PropertyCubit>(
            create: (context) => getIt<PropertyCubit>()..getProperties(),
          ),
          BlocProvider<PropertyDetailsCubit>(
            create: (context) => getIt<PropertyDetailsCubit>(),
          ),
        ],
        child: const PropertiesScreen(),
      ),
    );
  }
}
