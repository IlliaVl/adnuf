class PropertyDetailsDTO {
  PropertyDetailsDTO({
    this.aangebodenSinds,
    this.aangebodenSindsTekst,
    this.aantalBadkamers,
    this.aantalKamers,
    this.aantalSlaapkamers,
    this.aantalWoonlagen,
    this.aanvaarding,
    this.adres,
    this.afgekochtDatum,
    this.balkonDakterras,
    this.bedrijfsruimteCombinatieObject,
    this.bezichtingDagdelen,
    this.bezichtingDagen,
    this.bijdrageVve,
    this.bijzonderheden,
    this.bouwjaar,
    this.bouwvorm,
    this.bronCode,
    this.contactpersoonEmail,
    this.contactpersoonTelefoon,
    this.cv,
    this.datumOndertekeningAkte,
    this.deeplink,
    this.detailInfo,
    this.eigendomsSituatie,
    this.energielabel,
    this.erfpachtBedrag,
    this.garage,
    this.garageIsolatie,
    this.garageVoorzieningen,
    this.gelegenOp,
    this.gewijzigdDatum,
    this.hoofdFoto,
    this.hoofdFotoSecure,
    this.hoofdTuinType,
    this.id,
    this.indBasisPlaatsing,
    this.indFotos,
    this.indIpix,
    this.indOpenhuizenTopper,
    this.indPdf,
    this.indPlattegrond,
    this.indTop,
    this.indVeilingProduct,
    this.indVideo,
    this.inhoud,
    this.internalId,
    this.isIngetrokken,
    this.isVerhuurd,
    this.isVerkocht,
    this.isolatie,
    this.kenmerken,
    this.kenmerkenKort,
    this.kenmerkenTitel,
    this.ligging,
    this.mliUrl,
    this.makelaar,
    this.makelaarId,
    this.makelaarTelefoon,
    this.medeAanbieders,
    this.media,
    this.mediaFoto,
    this.mobileUrl,
    this.objectType,
    this.objectTypeMetVoorvoegsel,
    this.openHuizen,
    this.perceelOppervlakte,
    this.permanenteBewoning,
    this.plaats,
    this.postcode,
    this.prijs,
    this.prijsGeformatteerd,
    this.project,
    this.projectNaam,
    this.publicatieDatum,
    this.publicatieStatus,
    this.schuurBerging,
    this.schuurBergingIsolatie,
    this.schuurBergingVoorzieningen,
    this.scrambledId,
    this.serviceKosten,
    this.soortAanbod,
    this.soortDak,
    this.soortGarage,
    this.soortParkeergelegenheid,
    this.soortPlaatsing,
    this.soortWoning,
    this.titels,
    this.toonBezichtigingMaken,
    this.toonBrochureAanvraag,
    this.toonMakelaarWoningaanbod,
    this.toonReageren,
    this.transactieAfmeldDatum,
    this.transactieMakelaarId,
    this.transactieMakelaarNaam,
    this.tuinLigging,
    this.typeProject,
    this.url,
    this.veiling,
    this.verkoopStatus,
    this.verwarming,
    this.video,
    this.volledigeOmschrijving,
    this.voorzieningen,
    this.wgs84X,
    this.wgs84Y,
    this.warmWater,
    this.woonOppervlakte,
    this.eersteHuurPrijs,
    this.eersteHuurPrijsLang,
    this.eersteKoopPrijs,
    this.eersteKoopPrijsLang,
    this.huurPrijs,
    this.huurPrijsLang,
    this.huurPrijsTot,
    this.huurprijs,
    this.huurprijsFormaat,
    this.koopPrijs,
    this.koopPrijsLang,
    this.koopprijs,
    this.koopprijsFormaat,
    this.koopprijsTot,
    this.shortUrl,
    this.tuin,
    this.veilingGeformatteerd,
  });

  final String? aangebodenSinds;
  final String? aangebodenSindsTekst;
  final int? aantalBadkamers;
  final int? aantalKamers;
  final dynamic aantalSlaapkamers;
  final String? aantalWoonlagen;
  final String? aanvaarding;
  final String? adres;
  final dynamic afgekochtDatum;
  final dynamic balkonDakterras;
  final dynamic bedrijfsruimteCombinatieObject;
  final List<BezichtingDag>? bezichtingDagdelen;
  final List<BezichtingDag>? bezichtingDagen;
  final dynamic bijdrageVve;
  final dynamic bijzonderheden;
  final String? bouwjaar;
  final String? bouwvorm;
  final String? bronCode;
  final dynamic contactpersoonEmail;
  final dynamic contactpersoonTelefoon;
  final String? cv;
  final dynamic datumOndertekeningAkte;
  final dynamic deeplink;
  final DetailInfo? detailInfo;
  final dynamic eigendomsSituatie;
  final Energielabel? energielabel;
  final dynamic erfpachtBedrag;
  final dynamic garage;
  final dynamic garageIsolatie;
  final dynamic garageVoorzieningen;
  final dynamic gelegenOp;
  final String? gewijzigdDatum;
  final String? hoofdFoto;
  final String? hoofdFotoSecure;
  final String? hoofdTuinType;
  final int? id;
  final bool? indBasisPlaatsing;
  final bool? indFotos;
  final bool? indIpix;
  final bool? indOpenhuizenTopper;
  final bool? indPdf;
  final bool? indPlattegrond;
  final bool? indTop;
  final bool? indVeilingProduct;
  final bool? indVideo;
  final int? inhoud;
  final String? internalId;
  final bool? isIngetrokken;
  final bool? isVerhuurd;
  final bool? isVerkocht;
  final String? isolatie;
  final List<KenmerkenKort>? kenmerken;
  final KenmerkenKort? kenmerkenKort;
  final dynamic kenmerkenTitel;
  final dynamic ligging;
  final String? mliUrl;
  final String? makelaar;
  final int? makelaarId;
  final String? makelaarTelefoon;
  final List<dynamic>? medeAanbieders;
  final List<Media>? media;
  final List<String>? mediaFoto;
  final String? mobileUrl;
  final String? objectType;
  final String? objectTypeMetVoorvoegsel;
  final List<dynamic>? openHuizen;
  final int? perceelOppervlakte;
  final String? permanenteBewoning;
  final String? plaats;
  final String? postcode;
  final Prijs? prijs;
  final String? prijsGeformatteerd;
  final dynamic project;
  final dynamic projectNaam;
  final String? publicatieDatum;
  final int? publicatieStatus;
  final String? schuurBerging;
  final dynamic schuurBergingIsolatie;
  final String? schuurBergingVoorzieningen;
  final String? scrambledId;
  final int? serviceKosten;
  final int? soortAanbod;
  final String? soortDak;
  final String? soortGarage;
  final String? soortParkeergelegenheid;
  final int? soortPlaatsing;
  final String? soortWoning;
  final List<Titel>? titels;
  final bool? toonBezichtigingMaken;
  final bool? toonBrochureAanvraag;
  final bool? toonMakelaarWoningaanbod;
  final bool? toonReageren;
  final dynamic transactieAfmeldDatum;
  final dynamic transactieMakelaarId;
  final dynamic transactieMakelaarNaam;
  final String? tuinLigging;
  final int? typeProject;
  final String? url;
  final Veiling? veiling;
  final String? verkoopStatus;
  final String? verwarming;
  final Video? video;
  final String? volledigeOmschrijving;
  final dynamic voorzieningen;
  final double? wgs84X;
  final double? wgs84Y;
  final String? warmWater;
  final int? woonOppervlakte;
  final dynamic eersteHuurPrijs;
  final dynamic eersteHuurPrijsLang;
  final dynamic eersteKoopPrijs;
  final dynamic eersteKoopPrijsLang;
  final dynamic huurPrijs;
  final dynamic huurPrijsLang;
  final dynamic huurPrijsTot;
  final dynamic huurprijs;
  final dynamic huurprijsFormaat;
  final int? koopPrijs;
  final String? koopPrijsLang;
  final int? koopprijs;
  final String? koopprijsFormaat;
  final dynamic koopprijsTot;
  final String? shortUrl;
  final String? tuin;
  final dynamic veilingGeformatteerd;

  factory PropertyDetailsDTO.fromJson(Map<String, dynamic> json) =>
      PropertyDetailsDTO(
        aangebodenSinds: json["AangebodenSinds"],
        aangebodenSindsTekst: json["AangebodenSindsTekst"],
        aantalBadkamers: json["AantalBadkamers"],
        aantalKamers: json["AantalKamers"],
        aantalSlaapkamers: json["AantalSlaapkamers"],
        aantalWoonlagen: json["AantalWoonlagen"],
        aanvaarding: json["Aanvaarding"],
        adres: json["Adres"],
        afgekochtDatum: json["AfgekochtDatum"],
        balkonDakterras: json["BalkonDakterras"],
        bedrijfsruimteCombinatieObject: json["BedrijfsruimteCombinatieObject"],
        bezichtingDagdelen: json["BezichtingDagdelen"] == null
            ? null
            : List<BezichtingDag>.from(json["BezichtingDagdelen"]
                .map((x) => BezichtingDag.fromJson(x))),
        bezichtingDagen: json["BezichtingDagen"] == null
            ? null
            : List<BezichtingDag>.from(
                json["BezichtingDagen"].map((x) => BezichtingDag.fromJson(x))),
        bijdrageVve: json["BijdrageVVE"],
        bijzonderheden: json["Bijzonderheden"],
        bouwjaar: json["Bouwjaar"],
        bouwvorm: json["Bouwvorm"],
        bronCode: json["BronCode"],
        contactpersoonEmail: json["ContactpersoonEmail"],
        contactpersoonTelefoon: json["ContactpersoonTelefoon"],
        cv: json["Cv"],
        datumOndertekeningAkte: json["DatumOndertekeningAkte"],
        deeplink: json["Deeplink"],
        detailInfo: json["DetailInfo"] == null
            ? null
            : DetailInfo.fromJson(json["DetailInfo"]),
        eigendomsSituatie: json["EigendomsSituatie"],
        energielabel: json["Energielabel"] == null
            ? null
            : Energielabel.fromJson(json["Energielabel"]),
        erfpachtBedrag: json["ErfpachtBedrag"],
        garage: json["Garage"],
        garageIsolatie: json["GarageIsolatie"],
        garageVoorzieningen: json["GarageVoorzieningen"],
        gelegenOp: json["GelegenOp"],
        gewijzigdDatum: json["GewijzigdDatum"],
        hoofdFoto: json["HoofdFoto"],
        hoofdFotoSecure: json["HoofdFotoSecure"],
        hoofdTuinType: json["HoofdTuinType"],
        id: json["Id"],
        indBasisPlaatsing: json["IndBasisPlaatsing"],
        indFotos: json["IndFotos"],
        indIpix: json["IndIpix"],
        indOpenhuizenTopper: json["IndOpenhuizenTopper"],
        indPdf: json["IndPDF"],
        indPlattegrond: json["IndPlattegrond"],
        indTop: json["IndTop"],
        indVeilingProduct: json["IndVeilingProduct"],
        indVideo: json["IndVideo"],
        inhoud: json["Inhoud"],
        internalId: json["InternalId"],
        isIngetrokken: json["IsIngetrokken"],
        isVerhuurd: json["IsVerhuurd"],
        isVerkocht: json["IsVerkocht"],
        isolatie: json["Isolatie"],
        kenmerken: json["Kenmerken"] == null
            ? null
            : List<KenmerkenKort>.from(
                json["Kenmerken"].map((x) => KenmerkenKort.fromJson(x))),
        kenmerkenKort: json["KenmerkenKort"] == null
            ? null
            : KenmerkenKort.fromJson(json["KenmerkenKort"]),
        kenmerkenTitel: json["KenmerkenTitel"],
        ligging: json["Ligging"],
        mliUrl: json["MLIUrl"],
        makelaar: json["Makelaar"],
        makelaarId: json["MakelaarId"],
        makelaarTelefoon: json["MakelaarTelefoon"],
        // medeAanbieders: json["MedeAanbieders"] == null ? null : List<dynamic>?.from(json["MedeAanbieders"].map((x) => x)),
        media: json["Media"] == null
            ? null
            : List<Media>.from(json["Media"].map((x) => Media.fromJson(x))),
        mediaFoto: json["Media-Foto"] == null
            ? null
            : List<String>.from(json["Media-Foto"].map((x) => x)),
        mobileUrl: json["MobileURL"],
        objectType: json["ObjectType"],
        objectTypeMetVoorvoegsel: json["ObjectTypeMetVoorvoegsel"],
        // openHuizen: json["OpenHuizen"] == null ? null : List<dynamic>?.from(json["OpenHuizen"].map((x) => x)),
        perceelOppervlakte: json["PerceelOppervlakte"],
        permanenteBewoning: json["PermanenteBewoning"],
        plaats: json["Plaats"],
        postcode: json["Postcode"],
        prijs: json["Prijs"] == null ? null : Prijs.fromJson(json["Prijs"]),
        prijsGeformatteerd: json["PrijsGeformatteerd"],
        project: json["Project"],
        projectNaam: json["ProjectNaam"],
        publicatieDatum: json["PublicatieDatum"],
        publicatieStatus: json["PublicatieStatus"],
        schuurBerging: json["SchuurBerging"],
        schuurBergingIsolatie: json["SchuurBergingIsolatie"],
        schuurBergingVoorzieningen: json["SchuurBergingVoorzieningen"],
        scrambledId: json["ScrambledId"],
        serviceKosten: json["ServiceKosten"],
        soortAanbod: json["SoortAanbod"],
        soortDak: json["SoortDak"],
        soortGarage: json["SoortGarage"],
        soortParkeergelegenheid: json["SoortParkeergelegenheid"],
        soortPlaatsing: json["SoortPlaatsing"],
        soortWoning: json["SoortWoning"],
        titels: json["Titels"] == null
            ? null
            : List<Titel>.from(json["Titels"].map((x) => Titel.fromJson(x))),
        toonBezichtigingMaken: json["ToonBezichtigingMaken"],
        toonBrochureAanvraag: json["ToonBrochureAanvraag"],
        toonMakelaarWoningaanbod: json["ToonMakelaarWoningaanbod"],
        toonReageren: json["ToonReageren"],
        transactieAfmeldDatum: json["TransactieAfmeldDatum"],
        transactieMakelaarId: json["TransactieMakelaarId"],
        transactieMakelaarNaam: json["TransactieMakelaarNaam"],
        tuinLigging: json["TuinLigging"],
        typeProject: json["TypeProject"],
        url: json["URL"],
        veiling:
            json["Veiling"] == null ? null : Veiling.fromJson(json["Veiling"]),
        verkoopStatus: json["VerkoopStatus"],
        verwarming: json["Verwarming"],
        video: json["Video"] == null ? null : Video.fromJson(json["Video"]),
        volledigeOmschrijving: json["VolledigeOmschrijving"],
        voorzieningen: json["Voorzieningen"],
        wgs84X: json["WGS84_X"]?.toDouble(),
        wgs84Y: json["WGS84_Y"]?.toDouble(),
        warmWater: json["WarmWater"],
        woonOppervlakte: json["WoonOppervlakte"],
        eersteHuurPrijs: json["EersteHuurPrijs"],
        eersteHuurPrijsLang: json["EersteHuurPrijsLang"],
        eersteKoopPrijs: json["EersteKoopPrijs"],
        eersteKoopPrijsLang: json["EersteKoopPrijsLang"],
        huurPrijs: json["HuurPrijs"],
        huurPrijsLang: json["HuurPrijsLang"],
        huurPrijsTot: json["HuurPrijsTot"],
        huurprijs: json["Huurprijs"],
        huurprijsFormaat: json["HuurprijsFormaat"],
        koopPrijs: json["KoopPrijs"],
        koopPrijsLang: json["KoopPrijsLang"],
        koopprijs: json["Koopprijs"],
        koopprijsFormaat: json["KoopprijsFormaat"],
        koopprijsTot: json["KoopprijsTot"],
        shortUrl: json["ShortURL"],
        tuin: json["Tuin"],
        veilingGeformatteerd: json["VeilingGeformatteerd"],
      );
}

class BezichtingDag {
  BezichtingDag({
    this.naam,
    this.waarde,
  });

  final String? naam;
  final String? waarde;

  factory BezichtingDag.fromJson(Map<String, dynamic> json) => BezichtingDag(
        naam: json["Naam"],
        waarde: json["Waarde"],
      );
}

class DetailInfo {
  DetailInfo({
    this.hasPromotionLabel,
    this.promotionLabelType,
    this.ribbonColor,
    this.ribbonText,
    this.tagline,
  });

  final bool? hasPromotionLabel;
  final int? promotionLabelType;
  final int? ribbonColor;
  final dynamic ribbonText;
  final String? tagline;

  factory DetailInfo.fromJson(Map<String, dynamic> json) => DetailInfo(
        hasPromotionLabel: json["HasPromotionLabel"],
        promotionLabelType: json["PromotionLabelType"],
        ribbonColor: json["RibbonColor"],
        ribbonText: json["RibbonText"],
        tagline: json["Tagline"],
      );
}

class Energielabel {
  Energielabel({
    this.definitief,
    this.index,
    this.label,
    this.nietBeschikbaar,
    this.nietVerplicht,
  });

  final bool? definitief;
  final dynamic index;
  final String? label;
  final bool? nietBeschikbaar;
  final bool? nietVerplicht;

  factory Energielabel.fromJson(Map<String, dynamic> json) => Energielabel(
        definitief: json["Definitief"],
        index: json["Index"],
        label: json["Label"],
        nietBeschikbaar: json["NietBeschikbaar"],
        nietVerplicht: json["NietVerplicht"],
      );
}

class KenmerkenKort {
  KenmerkenKort({
    this.ad,
    this.kenmerken,
    this.lokNummer,
    this.subKenmerk,
    this.titel,
  });

  final String? ad;
  final List<Kenmerken>? kenmerken;
  final int? lokNummer;
  final KenmerkenKort? subKenmerk;
  final String? titel;

  factory KenmerkenKort.fromJson(Map<String, dynamic> json) => KenmerkenKort(
        ad: json["Ad"],
        kenmerken: json["Kenmerken"] == null
            ? null
            : List<Kenmerken>.from(
                json["Kenmerken"].map((x) => Kenmerken.fromJson(x))),
        lokNummer: json["LokNummer"],
        subKenmerk: json["SubKenmerk"] == null
            ? null
            : KenmerkenKort.fromJson(json["SubKenmerk"]),
        titel: json["Titel"],
      );
}

class Kenmerken {
  Kenmerken({
    this.naam,
    this.naamCss,
    this.waarde,
    this.waardeCss,
  });

  final String? naam;
  final String? naamCss;
  final String? waarde;
  final String? waardeCss;

  factory Kenmerken.fromJson(Map<String, dynamic> json) => Kenmerken(
        naam: json["Naam"],
        naamCss: json["NaamCss"],
        waarde: json["Waarde"],
        waardeCss: json["WaardeCss"],
      );
}

class Media {
  Media({
    this.categorie,
    this.contentType,
    this.id,
    this.indexNumber,
    this.mediaItems,
    this.metadata,
    this.omschrijving,
    this.registratieVerplicht,
    this.soort,
  });

  final int? categorie;
  final int? contentType;
  final String? id;
  final int? indexNumber;
  final List<MediaItem>? mediaItems;
  final String? metadata;
  final String? omschrijving;
  final bool? registratieVerplicht;
  final int? soort;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        categorie: json["Categorie"],
        contentType: json["ContentType"],
        id: json["Id"],
        indexNumber: json["IndexNumber"],
        mediaItems: json["MediaItems"] == null
            ? null
            : List<MediaItem>.from(
                json["MediaItems"].map((x) => MediaItem.fromJson(x))),
        metadata: json["Metadata"],
        omschrijving: json["Omschrijving"],
        registratieVerplicht: json["RegistratieVerplicht"],
        soort: json["Soort"],
      );
}

class MediaItem {
  MediaItem({
    this.category,
    this.height,
    this.url,
    this.urlSecure,
    this.width,
  });

  final int? category;
  final int? height;
  final String? url;
  final String? urlSecure;
  final int? width;

  factory MediaItem.fromJson(Map<String, dynamic> json) => MediaItem(
        category: json["Category"],
        height: json["Height"],
        url: json["Url"],
        urlSecure: json["UrlSecure"],
        width: json["Width"],
      );
}

class Prijs {
  Prijs({
    this.geenExtraKosten,
    this.huurAbbreviation,
    this.huurprijs,
    this.huurprijsOpAanvraag,
    this.huurprijsTot,
    this.koopAbbreviation,
    this.koopprijs,
    this.koopprijsOpAanvraag,
    this.koopprijsTot,
    this.originelePrijs,
    this.veilingText,
  });

  final dynamic geenExtraKosten;
  final String? huurAbbreviation;
  final dynamic huurprijs;
  final String? huurprijsOpAanvraag;
  final dynamic huurprijsTot;
  final String? koopAbbreviation;
  final int? koopprijs;
  final String? koopprijsOpAanvraag;
  final dynamic koopprijsTot;
  final dynamic originelePrijs;
  final String? veilingText;

  factory Prijs.fromJson(Map<String, dynamic> json) => Prijs(
        geenExtraKosten: json["GeenExtraKosten"],
        huurAbbreviation: json["HuurAbbreviation"],
        huurprijs: json["Huurprijs"],
        huurprijsOpAanvraag: json["HuurprijsOpAanvraag"],
        huurprijsTot: json["HuurprijsTot"],
        koopAbbreviation: json["KoopAbbreviation"],
        koopprijs: json["Koopprijs"],
        koopprijsOpAanvraag: json["KoopprijsOpAanvraag"],
        koopprijsTot: json["KoopprijsTot"],
        originelePrijs: json["OriginelePrijs"],
        veilingText: json["VeilingText"],
      );
}

class Titel {
  Titel({
    this.omschrijving,
    this.pagina,
  });

  final String? omschrijving;
  final int? pagina;

  factory Titel.fromJson(Map<String, dynamic> json) => Titel(
        omschrijving: json["Omschrijving"],
        pagina: json["Pagina"],
      );
}

class Veiling {
  Veiling({
    this.eindDatum,
    this.link,
    this.startDatum,
    this.veilingPartij,
  });

  final dynamic eindDatum;
  final dynamic link;
  final dynamic startDatum;
  final dynamic veilingPartij;

  factory Veiling.fromJson(Map<String, dynamic> json) => Veiling(
        eindDatum: json["EindDatum"],
        link: json["Link"],
        startDatum: json["StartDatum"],
        veilingPartij: json["VeilingPartij"],
      );
}

class Video {
  Video({
    this.imageUrl,
    this.quadiaVideoId,
    this.thumbnailUrl,
    this.videos,
  });

  final String? imageUrl;
  final int? quadiaVideoId;
  final String? thumbnailUrl;
  final List<VideoElement>? videos;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        imageUrl: json["ImageUrl"],
        quadiaVideoId: json["QuadiaVideoId"],
        thumbnailUrl: json["ThumbnailUrl"],
        videos: json["Videos"] == null
            ? null
            : List<VideoElement>.from(
                json["Videos"].map((x) => VideoElement.fromJson(x))),
      );
}

class VideoElement {
  VideoElement({
    this.bitRate,
    this.cdns,
    this.hasAudio,
    this.hasVideo,
    this.isSource,
    this.stream,
    this.url,
  });

  final int? bitRate;
  final List<Cdn>? cdns;
  final bool? hasAudio;
  final bool? hasVideo;
  final bool? isSource;
  final Stream? stream;
  final String? url;

  factory VideoElement.fromJson(Map<String, dynamic> json) => VideoElement(
        bitRate: json["BitRate"],
        cdns: json["Cdns"] == null
            ? null
            : List<Cdn>.from(json["Cdns"].map((x) => Cdn.fromJson(x))),
        hasAudio: json["HasAudio"],
        hasVideo: json["HasVideo"],
        isSource: json["IsSource"],
        stream: json["Stream"] == null ? null : Stream.fromJson(json["Stream"]),
        url: json["Url"],
      );
}

class Cdn {
  Cdn({
    this.deliveryType,
    this.fileType,
    this.mimeType,
    this.sslUrl,
    this.url,
  });

  final String? deliveryType;
  final dynamic fileType;
  final String? mimeType;
  final dynamic sslUrl;
  final String? url;

  factory Cdn.fromJson(Map<String, dynamic> json) => Cdn(
        deliveryType: json["DeliveryType"],
        fileType: json["FileType"],
        mimeType: json["MimeType"],
        sslUrl: json["SslUrl"],
        url: json["Url"],
      );
}

class Stream {
  Stream({
    this.averageBitRate,
    this.height,
    this.width,
  });

  final int? averageBitRate;
  final int? height;
  final int? width;

  factory Stream.fromJson(Map<String, dynamic> json) => Stream(
        averageBitRate: json["AverageBitRate"],
        height: json["Height"],
        width: json["Width"],
      );
}
