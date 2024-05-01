
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/colors.dart';

class SemesterScreenListView extends StatelessWidget {
  const SemesterScreenListView({super.key, required this.semName});

  final String semName;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
      child: SemScreenCard(screenWidth: screenWidth, semName: semName),
    );
  }
}

class SemScreenCard extends StatelessWidget {
  const SemScreenCard({
    super.key,
    required this.screenWidth,
    required this.semName,
  });

  final double screenWidth;
  final String semName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Color.fromARGB(231, 61, 61, 61),
      child: Container(
        color: CColors.secondaryButton,
        height: 69,
        width: screenWidth * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(semName,style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600,color: CColors.textPrimary),),
          ),
          
          const Icon(Icons.arrow_right_alt_outlined,size: 40,)
          ],
        ),
      ),
    );
  }
}
