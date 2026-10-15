import 'package:bookia_project/core/routes/app_router.dart';
import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/features/auth/presentation/ui/login_screen.dart';
import 'package:bookia_project/features/auth/presentation/ui/register_screen.dart';
import 'package:bookia_project/features/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';

class bookia extends StatelessWidget {
  const bookia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: AppRoutes.loginScreen,
    onGenerateRoute: AppRouter.onGenerateRoute
    
    );
  }
}