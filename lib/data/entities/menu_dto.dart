import 'package:flutter_ramen/data/entities/noodle_dto.dart';
import 'package:flutter_ramen/data/entities/noodle_type_dto.dart';
import 'package:flutter_ramen/data/entities/noodle_volume_dto.dart';
import 'package:flutter_ramen/data/entities/soup_flavor_dto.dart';
import 'package:flutter_ramen/data/entities/topping_dto.dart';

class MenuDto {
  final List<NoodleTypeDto> noodleTypeOptions;
  final Map<String, List<SoupType>> soupTypeOptions;
  final List<SoupFlavorDto> soupFlavorOptions;
  final List<Richness> richnessOptions;
  final List<Flavor> flavorOilOptions;
  final List<Flavor> garlicOptions;
  final List<ToppingDto> porkOptions;
  final List<ToppingDto> negiOptions;
  final List<SpicyLevel> spicyLevelOptions;
  final List<Firmness> firmnessOptions;
  final Map<String, List<NoodleVolumeDto>> noodleVolumeOptions;
  final List<ToppingDto> extraOptions;

  MenuDto({
    required this.noodleTypeOptions,
    required this.soupTypeOptions,
    required this.soupFlavorOptions,
    required this.richnessOptions,
    required this.flavorOilOptions,
    required this.garlicOptions,
    required this.porkOptions,
    required this.negiOptions,
    required this.spicyLevelOptions,
    required this.firmnessOptions,
    required this.noodleVolumeOptions,
    required this.extraOptions,
  });
}
