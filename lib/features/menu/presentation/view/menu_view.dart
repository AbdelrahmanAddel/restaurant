import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/helpers/navigation_extension.dart';
import 'package:intern_restaurant/core/routes/routes_strings.dart';
import 'package:intern_restaurant/di/app_dependency_injection.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:intern_restaurant/features/menu/presentation/widgets/menu/menu_app_bar.dart';

import 'package:intern_restaurant/features/menu/presentation/widgets/menu/menu_view_body.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menuViewAppBar(),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(),
        backgroundColor: AppColors.greenColor,
        onPressed: () {
          context.push(RoutesStrings.card);
        },
        child: Icon(size: 30, Icons.shopping_cart, color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.h),
        child: BlocProvider.value(
          value: getIt<MenuCubit>()
            ..getMenu()
            ..getCard(),
          child: MenuViewBody(),
        ),
      ),
    );
  }
}
