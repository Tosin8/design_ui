// ignore_for_file: public_member_api_docs, sort_constructors_first
class Coffee {
 final String name; 
  final String price; 
  final String imagePath;
  String volume;
  String rating; 
  String description;

  Coffee(
    this.name,
    this.price,
    this.imagePath,
    this.volume,
    this.rating,
    this.description,
  );
}
