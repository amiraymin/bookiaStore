import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/core/theme/app_colors.dart';
import 'package:bookia_project/core/theme/app_text_style.dart';
import 'package:bookia_project/core/utils/app_validator.dart';
import 'package:bookia_project/core/widgets/app_Botton.dart';
import 'package:bookia_project/core/widgets/custom_text_form_feild.dart';
import 'package:bookia_project/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:bookia_project/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var formState = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.transparent,
              content: CircularProgressIndicator(),
            ),
          );
        } else if (state is LoginSuccessState) {
          Navigator.pushNamed(context, AppRoutes.homeScreen);
        } else {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(content: Text("Error")),
          );
        }
      },
      child: Form(
        key: formState,
        child: Column(
          children: [
            CustomTextFormFeild(
              controller: emailController,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "Email is Requierd";
                }
                if (!AppValidator().isEmailValid(v ?? "")) {
                  return "Plese Enter your Email";
                }
              },
              hintText: LocaleKeys.email_placeholder.tr(),
              isPassword: false,
            ),
            20.verticalSpace,
            CustomTextFormFeild(
              controller: passwordController,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "password is required";
                } else if (v.length <= 6) {
                  return "password must be greater than 6 char";
                }
              },
              hintText: LocaleKeys.password_placeholder.tr(),
              isPassword: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  LocaleKeys.forgot_password.tr(),
                  style: AppTextStyles().hintTextStyle,
                ),
              ],
            ),
            30.verticalSpace,
            AppBotton(
              title: LocaleKeys.login_button.tr(),
              onTap: () {
                if (formState.currentState?.validate() ?? false) {
                  context.read<AuthCubit>().login(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                }
              },
            ),
            20.verticalSpace,
            Text(
              LocaleKeys.or_divider.tr(),
              style: AppTextStyles().hintTextStyle,
            ),
            20.verticalSpace,
            AppBotton(
              title: LocaleKeys.sign_in_google.tr(),
              bgColor: Colors.white,
              textColor: AppColors.grayColor,
            ),
            8.verticalSpace,
            AppBotton(
              title: LocaleKeys.sign_in_apple.tr(),
              bgColor: Colors.white,
              textColor: AppColors.grayColor,
            ),
          ],
        ),
      ),
    );
  }
}
