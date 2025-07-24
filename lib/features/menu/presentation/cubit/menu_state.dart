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
