

class Product{

  final String id ;
  final String title;
  final String description;
  final List<String> photoUrl;

  const Product( {
    required this.id,
    required this.title,
    required this.description,
    this.photoUrl = const <String>[],
  });

}