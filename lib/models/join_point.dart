
import 'point.dart';

class JoinPoint extends Point{

  JoinPoint(
      {required int id,
      String name = "Joint Point",
      required List<String> coordinate,
      }) : super(id: id, coordinate: coordinate, name: name);
}
