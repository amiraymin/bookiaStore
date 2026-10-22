
import 'dart:async';

import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/core/theme/app_colors.dart';
import 'package:bookia_project/core/theme/app_text_style.dart';
import 'package:bookia_project/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _openWelcomeScreen();
  }

  Future<void> _openWelcomeScreen() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/images/logo 1.svg',
              width: 210.w,
              semanticsLabel: 'Bookia logo',
            ),
             12.verticalSpace,
            Text(
              LocaleKeys.subtitle.tr(),
              style: AppTextStyles().hintTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}