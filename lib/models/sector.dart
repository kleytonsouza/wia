class Sector {
  final int id;
  final String name;
  final List<String> scope;
  final List<String> coordinate;
  final String info;

  const Sector({
    required this.id,
    this.scope = const ["competencia1", "competencia2"],
    required this.name,
    required this.coordinate,
    this.info = "Setor PROGRAD",
  });
}
