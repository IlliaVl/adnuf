import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_launcher/maps_launcher.dart';

import '../business_layer/cubits/property_details_cubit.dart';
import '../business_layer/cubits/property_details_state.dart';
import 'photos_screen.dart';

/// Screen for displaying details of the property object.
/// Depends on [PropertyDetailsCubit]
/// which state store all detailed information about property.
class PropertyDetailsScreen extends StatelessWidget {
  /// Number of property for which details are displaying.
  final String propertyId;

  /// Title for the [AppBar]
  final String? title;

  /// Creates new [PropertyDetailsScreen].
  const PropertyDetailsScreen({
    Key? key,
    required this.propertyId,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      body: BlocConsumer<PropertyDetailsCubit, PropertyDetailsState>(
          listener: (context, state) {
        if (!state.busy && state.error != PropertyDetailsStateErrors.none) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Something went wrong. Try later, please.'),
            ),
          );
        }
      }, builder: (context, state) {
        if (state.busy) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.error != PropertyDetailsStateErrors.none) {
          return Center(
            child: TextButton(
              onPressed: () => context
                  .read<PropertyDetailsCubit>()
                  .getPropertyDetails(propertyId: propertyId),
              child: const Text('Retry'),
            ),
          );
        }
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.propertyDetails?.images.isNotEmpty ?? false)
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (newContext) => BlocProvider.value(
                        value: context.read<PropertyDetailsCubit>(),
                        child: const PhotoScreen(),
                      ),
                    ),
                  ),
                  child: Image.network(
                      state.propertyDetails!.images.first.imageUrl),
                ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            state.propertyDetails?.address ?? '',
                            style: const TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const _MapButton(),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      state.propertyDetails?.fullDescription ?? '',
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class _MapButton extends StatelessWidget {
  const _MapButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final propertyDetails =
            context.read<PropertyDetailsCubit>().state.propertyDetails;
        MapsLauncher.launchCoordinates(
          propertyDetails?.latitude ?? 0.0,
          propertyDetails?.longitude ?? 0.0,
        );
      },
      child: Column(
        children: const [
          SizedBox(
            height: 60.0,
            child: Image(
              image: AssetImage('assets/marker.png'),
            ),
          ),
          // SizedBox(height: 8.0),
          Text(
            'Kaart',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
