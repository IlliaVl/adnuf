import 'package:equatable/equatable.dart';

/// Keeps the data of a Property object.
class Property extends Equatable {
  /// Id
  final String id;

  /// Address
  final String? address;

  /// Image url
  final String? imageUrl;

  /// Creates [Property]
  const Property({
    required this.id,
    this.address,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [
        id,
        address,
        imageUrl,
      ];
}
