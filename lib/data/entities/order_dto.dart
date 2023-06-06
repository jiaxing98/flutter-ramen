import 'package:flutter_ramen/data/entities/noodle_dto.dart';

class OrderDto {
  final int tableNo;
  final List<NoodleDto> noodles;

  OrderDto({
    required this.tableNo,
    required this.noodles,
  });
}
