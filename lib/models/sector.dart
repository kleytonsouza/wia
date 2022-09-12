
class Sector {
  final int id;
  final String name;
  final List<String> coordinate;
  final String info;

  const Sector(
      {required this.id,
      required this.name,
      required this.coordinate,
      this.info = "Setor PROGRAD"});
}
