import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';
import 'package:intern_restaurant/di/app_dependecny_injection.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';

import 'package:intern_restaurant/features/menu/presentation/widgets/menu_view_body.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.menu,
          style: AppTextStyle.interBlack16.copyWith(
            fontSize: 25.sp,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.greenColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.h),
        child: BlocProvider(
          create: (context) => getIt<MenuCubit>()..getMenu(),
          child: MenuViewBody(),
        ),
      ),
    );
  }
}
