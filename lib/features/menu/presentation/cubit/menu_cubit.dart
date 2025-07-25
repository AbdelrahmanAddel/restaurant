import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/domain/usecases/add_or_remove_item_form_card_usecase.dart';
import 'package:intern_restaurant/features/menu/domain/usecases/get_card_usecase.dart';
import 'package:intern_restaurant/features/menu/domain/usecases/get_menu_usecase.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit(
    this._getMenuUsecase,
    this._getCardUsecase,
    this._addOrRemoveItemFromCardUsecase,
  ) : super(GetMenuLoading());
  final GetMenuUsecase _getMenuUsecase;
  final GetCardUsecase _getCardUsecase;
  final AddOrRemoveItemFormCardUsecase _addOrRemoveItemFromCardUsecase;
  Future<void> getMenu() async {
    emit(GetMenuLoading());
    final result = await _getMenuUsecase.call();
    result.fold((error) => emit(GetMenuFailure(error)), (success) {
      emit(GetMenuSuccess(success));
    });
  }

  Future<void> addOrRemoveItemFromCard(MenuModel item) async {
    final result = await _addOrRemoveItemFromCardUsecase.call(item);
    result.fold((error) => emit(AddOrRemoveItemFromCardFailure(error)), (
      success,
    ) {
      emit(AddOrRemoveItemFromCardSuccess(success));
      getCard();
    });
  }

  Future<void> getCard() async {
    emit(GetCartLoading());
    final result = await _getCardUsecase.call();
    result.fold((error) => emit(GetCartFailure(error)), (success) {
      emit(GetCartSuccess(success));
    });
  }
}
