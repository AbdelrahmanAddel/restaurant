import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intern_restaurant/core/constant/app_colors.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';
import 'package:intern_restaurant/core/constant/assets.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';
import 'package:intern_restaurant/di/app_dependency_injection.dart';
import 'package:intern_restaurant/features/login/presentation/cubit/login_cubit.dart';
import 'package:intern_restaurant/features/login/presentation/widgets/login_text_form_fields_and_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(150),

            SvgPicture.asset(ImageAssets.imagesSvgAuthenticationScreenImage),
            verticalSpace(20),
            Text(
              AppStrings.login,
              style: AppTextStyle.interBlackBold24.copyWith(
                color: AppColors.black,
              ),
            ),
            verticalSpace(32),
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: LoginTextFormFieldsAndButton(),
            ),
          ],
        ),
      ),
    );
  }
}
