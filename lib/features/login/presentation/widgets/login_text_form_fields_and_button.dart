import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/core/common/functions/text_form_fields_validator.dart';
import 'package:intern_restaurant/core/common/widget/custom_app_button.dart';
import 'package:intern_restaurant/core/common/widget/custom_text_form_field.dart';
import 'package:intern_restaurant/core/constant/app_strings.dart';
import 'package:intern_restaurant/core/helpers/spacer.dart';
import 'package:intern_restaurant/features/login/data/models/login_with_email_and_password_model.dart';
import 'package:intern_restaurant/features/login/presentation/cubit/login_cubit.dart';
import 'package:intern_restaurant/features/login/presentation/widgets/login_bloc_listener.dart';

// ignore: must_be_immutable
class LoginTextFormFieldsAndButton extends StatelessWidget {
  LoginTextFormFieldsAndButton({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<LoginCubit>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormFiled(
            validator: (value) => textFormFieldsValidator(
              TextFormFieldsValidator.email,
              value ?? '',
            ),
            controller: emailController,
            hintText: AppStrings.enterEmail,
          ),
          verticalSpace(16),
          CustomTextFormFiled(
            validator: (value) => textFormFieldsValidator(
              TextFormFieldsValidator.password,
              value ?? '',
            ),
            controller: passwordController,
            hintText: AppStrings.enterPassword,
            isObscure: loginCubit.isPasswordVisible,
            suffixIcon: IconButton(
              onPressed: () {
                loginCubit.changePasswordVisibility();
              },
              icon: loginCubit.isPasswordVisible
                  ? Icon(Icons.visibility_off_outlined)
                  : Icon(Icons.visibility_outlined),
            ),
          ),
          verticalSpace(20),
          CustomAppButton(
            title: AppStrings.login,
            onTap: () {
              if (!formKey.currentState!.validate()) return;
              loginCubit.loginWithEmailAndPassword(
                LoginWithEmailAndPasswordModel(
                  email: emailController.text,
                  password: passwordController.text,
                ),
              );
            },
          ),
          verticalSpace(16),
          LoginBlocListener(),
        ],
      ),
    );
  }
}
