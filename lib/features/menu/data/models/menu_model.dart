import 'package:intern_restaurant/core/constant/firebase_strings.dart';

class MenuModel {
  final String ? name;
  final String ? description;
  final String  ? image;
  final double ? price;
  final int ? id;
  final bool ? isFavorite;
  MenuModel({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.id,
    this.isFavorite = false,
  });
  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
      name: json[FirebaseStrings.name],
      description: json[FirebaseStrings.description],
      image: json[FirebaseStrings.image],
      price: json[FirebaseStrings.price],
      id: json[FirebaseStrings.id],
      isFavorite: json[FirebaseStrings.isFavorite],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'isFavorite': isFavorite,
    };
  }
}
