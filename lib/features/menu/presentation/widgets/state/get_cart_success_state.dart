import 'package:flutter/material.dart';
import 'package:intern_restaurant/di/app_dependency_injection.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/custom_card.dart';
import '../cart/no_item_in_cart.dart';

class GetCartSuccessState extends StatelessWidget {
  const GetCartSuccessState({super.key, required this.cart});
  final List<MenuModel> cart;
  @override
  Widget build(BuildContext context) {
    return cart.isEmpty
        ? const NoItemInCart()
        : RefreshIndicator(
            onRefresh: () async {
              await getIt<MenuCubit>().getCard();
            },
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return CustomCard(menu: cart[index], isAddedToCard: true);
              },
            ),
          );
  }
}
