import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/di/app_dependency_injection.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_state.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/custom_card.dart';

class GetMenuSuccessState extends StatelessWidget {
  const GetMenuSuccessState({super.key, required this.menu});
  final List<MenuModel> menu;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await getIt<MenuCubit>().getMenu();
      },
      child: GridView.builder(
        physics: BouncingScrollPhysics(),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return BlocBuilder<MenuCubit, MenuState>(
            buildWhen: (previous, current) => current is GetCartSuccess,
            builder: (context, state) {
              return CustomCard(
                menu: menu[index],
                isAddedToCard: state is GetCartSuccess
                    ? state.cart.any((element) => element.id == menu[index].id)
                    : false,
              );
            },
          );
        },
      ),
    );
  }
}
