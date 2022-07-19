/// Keeps the data of a Property object.
class Property {
  /// Id
  final String id;

  /// Address
  final String? address;

  /// Image url
  final String? imageUrl;

  /// Creates [Property]
  Property({
    required this.id,
    this.address,
    this.imageUrl,
  });
}
