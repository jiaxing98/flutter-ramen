import 'package:flutter_ramen/data/entities/noodle_dto.dart';

class NoodleVolumeDto {
  final int id;
  final Volume volume;
  final double price;

  NoodleVolumeDto({
    required this.id,
    required this.volume,
    required this.price,
  });
}
