import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/core/widgets/app_Botton.dart';
import 'package:bookia_project/gen/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset("assets/images/bg_splashScreen.png").image,
          ),
        ), // BoxDecoration
        child: Column(
          children: [
            100.verticalSpace,
            SvgPicture.asset('assets/images/logo 1.svg', width: 210),
            12.verticalSpace,
            const Text(
              LocaleKeys.subtitle,
              style: TextStyle(
                color: Color(0xFF29292B),
                fontFamily: 'DM',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            AppBotton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.loginScreen);
              },
              title: "Login",
            ),
            12.verticalSpace,
            AppBotton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.registerScreen);
              },
              title: "Register",
              bgColor: Colors.white,
              textColor: Colors.black,
            ),
            94.verticalSpace,
          ],
        ),
      ),
    );
  }
}
