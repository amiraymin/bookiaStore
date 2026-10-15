import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/features/auth/presentation/ui/login_screen.dart';
import 'package:bookia_project/features/auth/presentation/ui/register_screen.dart';
import 'package:bookia_project/features/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';

class AppRouter {
static Route? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.registerScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
