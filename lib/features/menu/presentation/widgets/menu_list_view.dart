import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_state.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/state/get_menu_loading.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/state/get_menu_success.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuState>(
      buildWhen: (previous, current) {
        return current is GetMenuSuccess ||
            current is GetMenuFailure ||
            current is GetMenuLoading;
      },
      builder: (context, state) {
        switch (state) {
          case GetMenuLoading():
            return getMenuLoading();
          case GetMenuSuccess():
            return getMenuSuccess(menu: state.menu);
          case GetMenuFailure():
            return Center(child: Text(state.errorMessage));
        }
      },
    );
  }
}
