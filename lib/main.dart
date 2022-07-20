import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'business_layer/cubits/property_cubit.dart';
import 'business_layer/cubits/property_details_cubit.dart';
import 'data_layer/providers/funda_provider.dart';
import 'data_layer/repositories/funda_repository.dart';
import 'data_layer/repositories/property_repository.dart';
import 'presentation_layer/properties_screen.dart';

void main() {
  runApp(MyApp(
    propertyRepository: FundaRepository(
      FundaProvider(),
    ),
  ));
}

/// The application widget
class MyApp extends StatelessWidget {
  /// Creates the [MyApp]
  const MyApp({
    Key? key,
    required this.propertyRepository,
  }) : super(key: key);

  /// The repository responsible for user roles.
  final PropertyRepositoryInterface propertyRepository;

  // This widget is the root of your application.
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
            create: (context) => PropertyCubit(
              repository: propertyRepository,
            )..getProperties(),
          ),
          BlocProvider<PropertyDetailsCubit>(
            create: (context) => PropertyDetailsCubit(
              repository: propertyRepository,
            ),
          ),
        ],
        child: const PropertiesScreen(),
      ),
    );
  }
}
