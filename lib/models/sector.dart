import 'package:wia/models/point.dart';

class Sector extends Point {
  final List<String> scope;
  final String info;

  Sector(
      {required int id,
      required List<String> coordinate,
      required String name,
      this.info = "Setor PROGRAD",
      this.scope = const ["competencia1", "competencia2"]})
      : super(coordinate: coordinate, id: id, name: name);
}
