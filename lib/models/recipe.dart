class Recipe {
  final String publisher;
  final String imageUrl;
  final String title;
  final String id;

  Recipe({
    required this.publisher,
    required this.imageUrl,
    required this.title,
    required this.id,
  });

  @override
  String toString() {
    return 'Recipe{publisher: $publisher, imageUrl: $imageUrl, title: $title, id: $id}';
  }

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      publisher: json['publisher'],
      imageUrl: json['image_url'],
      title: json['title'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'publisher': publisher,
      'image_url': imageUrl,
      'title': title,
      'id': id,
    };
  }
}