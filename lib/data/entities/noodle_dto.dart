class NoodleDto {
  final int noodleType;
  final SoupType soupType;
  final int soupFlavor;
  final Flavor flavoredOil;
  final Flavor garlic;
  final int pork;
  final int negi;
  final SpicyLevel spicyLevel;
  final Firmness firmness;
  final int noodleVolume;
  final List<int> extras;

  NoodleDto({
    required this.noodleType,
    required this.soupType,
    required this.soupFlavor,
    required this.flavoredOil,
    required this.garlic,
    required this.pork,
    required this.negi,
    required this.spicyLevel,
    required this.firmness,
    required this.noodleVolume,
    required this.extras,
  });
}

enum SoupType { hot, cold }

enum Volume { normal, large, extraLarge }

enum Richness { light, normal, rich }

enum Flavor { none, light, normal, heavy }

enum SpicyLevel { none, mild, medium, spicy, hot, extraHot }

enum Firmness { soft, normal, hard, extraHard }
