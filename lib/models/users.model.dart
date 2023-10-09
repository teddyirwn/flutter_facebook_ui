class User {
  final String name;
  final String imageUrl;
  final String komen;
  final String time;

  const User(
    this.komen,
    this.time, {
    required this.name,
    required this.imageUrl,
  });
}
