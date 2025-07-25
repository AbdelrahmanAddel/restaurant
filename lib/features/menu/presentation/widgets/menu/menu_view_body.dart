import 'package:flutter/material.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/menu/menu_list_view.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/menu_bloc_listener.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: MenuListView()), MenuBlocListener()]);
  }
}
