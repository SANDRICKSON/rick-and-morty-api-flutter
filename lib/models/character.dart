class Character {
  final String name;
  final String status;
  final String species;
  final String image;

  Character({
    required this.name,
    required this.status,
    required this.species,
    required this.image,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      status: json['status'],
      species: json['species'],
      image: json['image'],
    );
  }
}