
class Recipies {
  Recipies(this.id, this.publisher, this.imageUrl, this.title);

  final String id;
  final String publisher;
  final String imageUrl;
  final String title;

  @override
  String toString() {
    return 'Recipies{id: $id, publisher: $publisher, imageUrl: $imageUrl, title: $title}';
  }
}