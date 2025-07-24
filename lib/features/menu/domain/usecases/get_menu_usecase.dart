import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/domain/repositories/menu_repository.dart';

class GetMenuUsecase {
  final MenuRepository _menuRepository;
  GetMenuUsecase(this._menuRepository);
  Future<Either<String, List<MenuModel>>> call() async {
    return await _menuRepository.getMenu();
  }
}
