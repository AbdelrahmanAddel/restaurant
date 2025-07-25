import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';

sealed class MenuState {}

final class GetMenuLoading extends MenuState {}

final class GetMenuSuccess extends MenuState {
  final List<MenuModel> menu;
  GetMenuSuccess(this.menu);
}

final class GetMenuFailure extends MenuState {
  final String errorMessage;
  GetMenuFailure(this.errorMessage);
}

final class AddOrRemoveItemFromCardFailure extends MenuState {
  final String errorMessage;
  AddOrRemoveItemFromCardFailure(this.errorMessage);
}

final class GetCartLoading extends MenuState {}

final class GetCartSuccess extends MenuState {
  final List<MenuModel> cart;
  GetCartSuccess(this.cart);
}

final class GetCartFailure extends MenuState {
  final String errorMessage;
  GetCartFailure(this.errorMessage);
}

final class AddOrRemoveItemFromCardSuccess extends MenuState {
  final bool isAdded;
  AddOrRemoveItemFromCardSuccess(this.isAdded);
}
