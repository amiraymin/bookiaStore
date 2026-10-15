import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookiaLogo extends StatelessWidget {
  const BookiaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('assets/images/logo 1.svg', width: 210),
        const SizedBox(height: 12),
        const Text(
          'Order Your Book Now!',
          style: TextStyle(
            color: Color(0xFF29292B),
            fontFamily: 'DM',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
