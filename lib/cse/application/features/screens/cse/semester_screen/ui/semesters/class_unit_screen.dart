//import 'dart:ffi';

import 'package:engineering_hub/cse/application/core/constants/colors.dart';
import 'package:engineering_hub/cse/application/core/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassUnitScreen extends StatelessWidget {
  const ClassUnitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: CColors.lightBackground,
          toolbarHeight: 10,
          bottom: const TabBar(
              indicatorPadding: EdgeInsets.only(left: -10, right: -10),
              isScrollable: false,
              indicator: BoxDecoration(
                color: CColors.secondaryButton,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              tabs: [
                Tab(
                  text: "Unit 1️⃣",
                ),
                Tab(
                  text: "Unit 2️⃣",
                ),
                Tab(
                  text: "Unit 3️⃣",
                ),
                Tab(
                  text: "Unit 4️⃣",
                ),
                Tab(
                  text: "iUnit 4️⃣",
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight10,
                Center(
                  child: Text(
                    'Heading of unit',
                    style: GoogleFonts.roboto(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                kheight10,
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Syllabus:',
                    style: GoogleFonts.roboto(fontSize: 18),
                  ),
                ),
                kheight20,
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 100,
                    width: 700,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: CColors.greyBorder),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                          'Introduction - Basic python - Variable - Arthematic operator - Logic of python - Exercise - oops - Web scrabbing'),
                    ),
                  ),
                )
              ],
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
