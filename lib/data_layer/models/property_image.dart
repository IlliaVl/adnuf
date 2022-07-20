import 'package:equatable/equatable.dart';

/// Keeps the detailed data of a Property image object.
class PropertyImage extends Equatable {
  /// Width
  final int width;

  /// Height
  final int height;

  /// Image URL
  final String imageUrl;

  /// Creates new [PropertyImage]
  const PropertyImage({
    required this.width,
    required this.height,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        width,
        height,
        imageUrl,
      ];
}
