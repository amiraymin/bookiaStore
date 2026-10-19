import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:bookia_project/features/auth/presentation/ui/login_screen.dart';
import 'package:bookia_project/features/auth/presentation/ui/register_screen.dart';
import 'package:bookia_project/features/home/presentation/ui/home.dart';
import 'package:bookia_project/features/onboarding/presentation/ui/splash_screen.dart';
import 'package:bookia_project/features/onboarding/presentation/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (context) => AuthCubit(),
              child: const LoginScreen(),
            );
          },
        );
      case AppRoutes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
