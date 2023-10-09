class AddUser {
  final String name;
  final List<String> imageUrl;
  final String time;
  final String? label;
  final bool cek;

  const AddUser({
    this.cek = false,
    required this.time,
    required this.label,
    required this.name,
    required this.imageUrl,
  });
}
