import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/cubits/property_cubit.dart';
import '../domain/cubits/property_details_cubit.dart';
import '../domain/cubits/property_state.dart';
import '../domain/models/property.dart';
import 'property_details_screen.dart';

/// Screen for displaying list of property objects.
/// Depends on [PropertyCubit] which state store all the list of fetched objects.
class PropertiesScreen extends StatelessWidget {
  /// Creates new [PropertiesScreen].
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PropertyCubit>();

    return BlocListener<PropertyCubit, PropertyState>(
      listener: (context, state) {
        if (state is ErrorPropertyState &&
            state.error != PropertyStateErrors.none) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Something went wrong. Try later, please.'),
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Funda'),
        ),
        body: switch (cubit.state) {
          final InitialPropertyState _ => const SizedBox(),
          final LoadingPropertyState _ => const Center(
              child: CircularProgressIndicator(),
            ),
          final LoadedPropertyState state => ListView(
              children: [
                ...state.properties.map(
                  (property) => _PropertyTile(property: property),
                ),
              ],
            ),
          final ErrorPropertyState _ => Center(
              child: TextButton(
                onPressed: cubit.getProperties,
                child: const Text('Retry'),
              ),
            ),
          PropertyState() => const SizedBox(),
        },
      ),
    );
  }
}

class _PropertyTile extends StatelessWidget {
  final Property property;

  const _PropertyTile({
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (newContext) => BlocProvider.value(
            value: context.read<PropertyDetailsCubit>()
              ..getPropertyDetails(
                propertyId: property.id,
              ),
            child: PropertyDetailsScreen(
              propertyId: property.id,
              title: property.address,
            ),
          ),
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(8.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Column(
          children: [
            if (property.imageUrl?.isNotEmpty ?? false)
              Image.network(
                property.imageUrl!,
              ),
            ListTile(
              title: Text(property.address ?? '--'),
            ),
          ],
        ),
      ),
    );
  }
}
