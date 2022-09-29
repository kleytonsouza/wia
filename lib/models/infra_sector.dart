import 'package:flutter_map/flutter_map.dart';
import 'package:wia/models/point.dart';

class InfraSector {
  final String info;
  final String name;
  final Polygon polygon;
  final List<Polyline> entries;

  InfraSector({
    required this.entries,
    this.info = "Setor da infraestrutura do predio historico",
    required this.polygon,
    required this.name,
  });
}
