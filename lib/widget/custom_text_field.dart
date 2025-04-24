import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.hint, required this.icon, required this.haid});
    final TextEditingController controller;
    final String hint;
    final IconData icon;
    final bool haid;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller ,
      obscureText:haid ,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Color(0xffF2F2F2),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF2F2F2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
