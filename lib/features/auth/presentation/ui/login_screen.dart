import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/core/theme/app_colors.dart';
import 'package:bookia_project/core/theme/app_text_style.dart';
import 'package:bookia_project/features/auth/presentation/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
                  },
                  child: Container(
                    width: 41.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1,
                        color: Colors.grey),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
                100.verticalSpace,
                Text(
                  "Welcome back! Glad\nto see you, Again!",
                  style: AppTextStyles().font30Regular,
                ),
                30.verticalSpace,
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
