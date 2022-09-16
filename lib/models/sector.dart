import 'package:flutter_map/flutter_map.dart';
import 'package:wia/models/point.dart';

class Sector extends Point {
  final List<String> scope;
  final String info;
  final Polygon polygon;

  Sector(
      {required int id,
      required List<String> coordinate,
      required String name,
      this.info = "Setor PROGRAD",
      this.scope = const ["competencia1", "competencia2"], required this.polygon})
      : super(coordinate: coordinate, id: id, name: name);
}
