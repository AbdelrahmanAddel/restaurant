import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  Future<bool> addOrRemoveItemFromCard({required MenuModel item}) async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return await _checkTheCardAndAddOrRemoveFormIt(item, userId);
  }

  Future<bool> _checkTheCardAndAddOrRemoveFormIt(
    MenuModel item,
    String userId,
  ) async {
    final itemReg = FirebaseFirestore.instance
        .collection(FirebaseStrings.card)
        .doc(userId)
        .collection(FirebaseStrings.card)
        .doc(item.id.toString());
    final itemRegData = await itemReg.get();

    if (itemRegData.exists) {
      await itemReg.delete();
      return false;
    } else {
      await itemReg.set(item.toJson());
      return true;
    }
  }

  Future<List<MenuModel>> getCard() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final card = await FirebaseFirestore.instance
        .collection(FirebaseStrings.card)
        .doc(userId)
        .collection(FirebaseStrings.card)
        .get();
    List<MenuModel> cardList = [];
    for (var element in card.docs) {
      cardList.add(MenuModel.fromJson(element.data()));
    }
    return cardList;
  }

}
