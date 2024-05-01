//TrenCard means Trending Field card

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/colors.dart';

class TrenCard extends StatelessWidget {
  const TrenCard({
    super.key,
    required this.tTitle,
    required this.tSubTitle,
    required this.tRview,
    required this.tImageUrl,
  });

  final String tTitle;
  final String tSubTitle;
  final String tRview;
  final String tImageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Color.fromARGB(222, 255, 255, 237),
      child: Container(
        height: 210,
        width: 195,
        child: Column(
          children: [
            Container(
              height: 85,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(tImageUrl), fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 25,
                  width: 110,
                  color: CColors.primary,
                  child: Center(
                    child: Text(
                      tTitle,
                      style: GoogleFonts.roboto(
                          fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Text(
                tSubTitle,
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                SizedBox(
                  width: 17,
                ),
                Text(
                  tRview,
                  style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: CColors.textThird),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}