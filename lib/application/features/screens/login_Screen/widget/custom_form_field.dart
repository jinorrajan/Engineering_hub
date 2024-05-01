import 'package:engineering_hub/application/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CColors.greenBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CColors.greenBorder),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.roboto(color: CColors.greyBorder)),
      ),
    );
  }
}
