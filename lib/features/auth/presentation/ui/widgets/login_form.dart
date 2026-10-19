import 'package:bookia_project/core/theme/app_colors.dart';
import 'package:bookia_project/core/theme/app_text_style.dart';
import 'package:bookia_project/core/utils/app_validator.dart';
import 'package:bookia_project/core/widgets/app_Botton.dart';
import 'package:bookia_project/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: Column(
        children: [
          CustomTextFormFeild(
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "Email is Requierd";
              }
              if (!AppValidator().isEmailValid(v ?? "")) {
                return "Plese Enter your Email";
              }
            },
            hintText: 'Enter your email',
            isPassword: false,
          ),
          20.verticalSpace,
          CustomTextFormFeild(
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "password is required";
              } else if (v.length <= 6) {
                return "password must be greater than 6 char";
              }
            },
            hintText: 'Enter your password',
            isPassword: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot Password?",
               style: AppTextStyles().hintTextStyle),
            ],
          ),
          30.verticalSpace,
          AppBotton(title: "Login",
            onTap: () {
              formState.currentState?.validate();
            },
          ),
          20.verticalSpace,
          Text("Or",
           style: AppTextStyles().hintTextStyle),
          20.verticalSpace,
          AppBotton(title: "Sign in with Google",
            bgColor: Colors.white,
            textColor: AppColors.grayColor,
          ),
          8.verticalSpace,
          AppBotton(title: "Sign in with Apple",
           bgColor: Colors.white,
            textColor: AppColors.grayColor,),
        ],
      ),
    );
  }
}
