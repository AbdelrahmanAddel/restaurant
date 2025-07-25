import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_state.dart';
import '../state/get_cart_success_state.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuState>(
      buildWhen: (previous, current) {
        return current is GetCartSuccess ||
            current is GetCartFailure ||
            current is GetCartLoading;
      },
      builder: (context, state) {
        switch (state) {
          case GetCartLoading():
            return Center(child: CircularProgressIndicator());
          case GetCartSuccess():
            return GetCartSuccessState(cart: state.cart);
          case GetCartFailure():
            return Center(child: Text(state.errorMessage));
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
