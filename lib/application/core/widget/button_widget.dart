import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.icons, required this.text, required this.color,
  });

  final IconData icons;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      width: 110,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          const SizedBox(
            width: 6,
          ),
           Icon(icons),
          const SizedBox(
            width: 11,
          ),
          Text(
            text,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, fontSize: 20),
          )
        ],
      ),
    );
  }
}