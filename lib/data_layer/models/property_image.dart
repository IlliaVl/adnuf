/// Keeps the detailed data of a Property image object.
class PropertyImage {
  /// Width
  final int width;

  /// Height
  final int height;

  /// Image URL
  final String imageUrl;

  /// Creates new [PropertyImage]
  PropertyImage({
    required this.width,
    required this.height,
    required this.imageUrl,
  });
}
