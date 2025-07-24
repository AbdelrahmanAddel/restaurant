import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/constant/app_text_styles.dart';
import 'package:intern_restaurant/core/constant/assets.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';

import 'package:intern_restaurant/features/login/data/datasources/login_remote_datasource.dart';
import 'package:intern_restaurant/features/login/data/repositories/login_repository_impl.dart';
import 'package:intern_restaurant/features/login/domain/usecases/login_with_email_and_pass_usecase.dart';
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
            Text(AppStrings.login, style: AppTextStyle.interBlack16),
            verticalSpace(32),
            BlocProvider(
              create: (context) => LoginCubit(
                LoginWithEmailAndPassUsecase(
                  LoginRepositoryImpl(LoginRemoteDatasource()),
                ),
              ),
              child: LoginTextFormFieldsAndButton(),
            ),
          ],
        ),
      ),
    );
  }
}
