import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';

abstract class MenuRepository {
  Future<Either<String, List<MenuModel>>> getMenu();
}
