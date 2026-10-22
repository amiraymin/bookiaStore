import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/core/theme/app_colors.dart';
import 'package:bookia_project/core/widgets/app_Botton.dart';
import 'package:bookia_project/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(0, 131, 145, 161),
        onPressed: () {
          if (context.locale.languageCode == 'ar') {
            context.setLocale(Locale('en'));
          } else {
            context.setLocale(Locale('ar'));
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.En.tr(),
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'DM',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.language_sharp, color: Colors.white),
          ],
        ),
      ),
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
            SvgPicture.asset('assets/images/logo 1.svg', width: 210.w),
            12.verticalSpace,
            Text(
              LocaleKeys.subtitle.tr(),
              style: TextStyle(
                color: Color(0xFF29292B),
                fontFamily: 'DM',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            AppBotton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.loginScreen);
              },
              title: LocaleKeys.login_button.tr(),
            ),
            12.verticalSpace,
            AppBotton(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.registerScreen);
              },
              title: LocaleKeys.register_button.tr(),
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
