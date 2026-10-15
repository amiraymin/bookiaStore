import 'package:bookia_project/core/routes/app_routes.dart';
import 'package:bookia_project/features/onboarding/presentation/ui/bookia_logo.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const _BookBackground(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 106, 20, 28),
              child: Column(
                children: [
                  const BookiaLogo(),
                  const Spacer(),
                  _ActionButton(
                    label: 'Login',
                    filled: true,
                    onPressed: () => Navigator.pushNamed(context, AppRoutes.loginScreen),
                  ),
                  const SizedBox(height: 12),
                  _ActionButton(
                    label: 'Register',
                    onPressed: () => Navigator.pushNamed(context, AppRoutes.registerScreen),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.label, required this.onPressed, this.filled = false});

  final String label;
  final VoidCallback onPressed;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: filled ? const Color(0xFFC9A54C) : Colors.white,
          foregroundColor: const Color(0xFF29292B),
          elevation: 0,
          side: filled ? BorderSide.none : const BorderSide(color: Color(0xFF29292B)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontFamily: 'DM', fontWeight: FontWeight.bold),
        ),
        child: Text(label),
      ),
    );
  }
}

class _BookBackground extends StatelessWidget {
  const _BookBackground();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/alif-caesar-rizqi-pratama-loUlSOXL81c-unsplash 1.png',
      fit: BoxFit.cover,
    );
  }
}
