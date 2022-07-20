import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_layer/cubits/property_details_cubit.dart';

/// Screen for displaying photos of the property object.
class PhotoScreen extends StatelessWidget {
  /// Creates new [PhotoScreen].
  const PhotoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images =
        context.read<PropertyDetailsCubit>().state.propertyDetails!.images;
    return Scaffold(
      body: PageView(
        children: images
            .map((propertyImage) => Image.network(propertyImage.imageUrl))
            .toList(),
      ),
    );
  }
}
