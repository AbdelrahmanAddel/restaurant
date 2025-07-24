import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intern_restaurant/core/constant/firebase_strings.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';

class MenuRemoteDataSource {
  Future<List<MenuModel>> getMenu() async {
    final response = await FirebaseFirestore.instance
        .collection(FirebaseStrings.menu)
        .get();
    List<MenuModel> menuList = [];
    for (var element in response.docs) {
      menuList.add(MenuModel.fromJson(element.data()));
    }
    return menuList;
  }
}
