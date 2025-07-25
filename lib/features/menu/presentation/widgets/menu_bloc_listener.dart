import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_state.dart';

class MenuBlocListener extends StatelessWidget {
  const MenuBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuCubit, MenuState>(
      listenWhen: (previous, current) {
        switch (current) {
          case GetMenuFailure():
          case GetCartFailure():
          case AddOrRemoveItemFromCardFailure():
          case AddOrRemoveItemFromCardSuccess():
            return true;
          default:
            return false;
        }
      },
      listener: (context, state) {
        if (state is GetMenuFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
        if (state is GetCartFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
        if (state is AddOrRemoveItemFromCardFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
        if (state is AddOrRemoveItemFromCardSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.isAdded ? "Added to cart" : "Removed from cart",
              ),
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
