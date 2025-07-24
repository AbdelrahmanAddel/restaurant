import 'package:flutter/material.dart';
import 'package:intern_restaurant/di/app_dependecny_injection.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/custom_menu_card.dart';

Widget getMenuSuccess({required List<MenuModel> menu}) {
  return RefreshIndicator(
    onRefresh: () async {
      await getIt<MenuCubit>().getMenu();
    },
    child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemCount: menu.length,
      itemBuilder: (context, index) {
        return CustomMenuCard(menu: menu[index]);
      },
    ),
  );
}
