import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/domain/repositories/menu_repository.dart';

class AddOrRemoveItemFormCardUsecase {
  final MenuRepository _menuRepository;
  AddOrRemoveItemFormCardUsecase(this._menuRepository);
  Future<Either<String, bool>> call(MenuModel item) async {
    return await _menuRepository.addOrRemoveItemFromCard(item: item);
  }
}
