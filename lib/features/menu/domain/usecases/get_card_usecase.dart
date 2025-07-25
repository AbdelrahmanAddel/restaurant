import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/domain/repositories/menu_repository.dart';

class GetCardUsecase {
  final MenuRepository _menuRepository;
  GetCardUsecase(this._menuRepository);
  Future<Either<String, List<MenuModel>>> call() async {
    return await _menuRepository.getCard();
  }
}
