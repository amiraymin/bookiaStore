import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.registerScreen);
          },
          child: const Text('Go to Register Page'),
        ),
      ),
    );
  }
}