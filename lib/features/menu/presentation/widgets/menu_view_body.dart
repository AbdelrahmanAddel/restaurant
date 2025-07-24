import 'package:flutter/material.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/menu_list_view.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [MenuListView()]));
  }
}
