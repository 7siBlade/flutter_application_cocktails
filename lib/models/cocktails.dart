class Cocktails{
  const Cocktails({
    required this.name,
    required this.imgeURL,
  });

  final String name;
  final String imgeURL;

  @override
  String toString() {
    return 'Cocktails{name: $name, imgeURL: $imgeURL}';
  }
}