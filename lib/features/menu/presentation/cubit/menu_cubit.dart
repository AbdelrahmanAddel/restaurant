import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/features/menu/domain/usecases/get_menu_usecase.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit(this._getMenuUsecase) : super(GetMenuLoading());
  final GetMenuUsecase _getMenuUsecase;
  Future<void> getMenu() async {
    emit(GetMenuLoading());
    final result = await _getMenuUsecase.call();
    result.fold((error) => emit(GetMenuFailure(error)), (success) {
      print(success.length.toString());
      emit(GetMenuSuccess(success));
    });
  }
}
