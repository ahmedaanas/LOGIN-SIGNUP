
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/app_colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback:
          (bounds) => LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
          ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        'LOGO',
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w500,
          fontFamily: 'Prime',
          color: Colors.white,
        ),
      ),
    );
  }
}
