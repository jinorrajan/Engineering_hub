//MainHomeScreenCustomCard


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/size.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });
  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 10,
        shadowColor: const Color.fromARGB(255, 95, 95, 95),
        color: Color.fromARGB(222, 255, 255, 237),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          height: mainCardHeight,
          width: mainCardWidth,
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 11,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                  radius: 30,
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  name,
                  style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}