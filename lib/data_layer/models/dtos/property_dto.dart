/// Data transfer object for Property objects.
class PropertyDTO {
  ///Property id
  final String id;

  /// Address
  final String? adres;

  /// Photo
  final String? foto;

  /// Large photo
  final String? fotoLarge;

  /// Largest photo
  final String? fotoLargest;

  /// Medium photo
  final String? fotoMedium;

  /// X coordinate
  final double? wgs84X;

  /// Y coordinate
  final double? wgs84Y;

  /// Creates a new [PropertyDTO].
  PropertyDTO({
    required this.id,
    this.adres,
    this.foto,
    this.fotoLarge,
    this.fotoLargest,
    this.fotoMedium,
    this.wgs84X,
    this.wgs84Y,
  });

  /// Creates a new [PropertyDTO] from the given JSON.
  factory PropertyDTO.fromJson(Map<String, dynamic> json) => PropertyDTO(
        adres: json["Adres"],
        foto: json["Foto"],
        fotoLarge: json["FotoLarge"],
        fotoLargest: json["FotoLargest"],
        fotoMedium: json["FotoMedium"],
        id: json["Id"],
        wgs84X: json["WGS84_X"]?.toDouble(),
        wgs84Y: json["WGS84_Y"]?.toDouble(),
      );
}
