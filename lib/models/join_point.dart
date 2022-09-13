
class JoinPoint {
  final int id;
  final String name;
  final List<String> coordinate;
  final String info;

  const JoinPoint(
      {required this.id,
      required this.name,
      required this.coordinate,
      this.info = "Ponto de Junção"});
}
