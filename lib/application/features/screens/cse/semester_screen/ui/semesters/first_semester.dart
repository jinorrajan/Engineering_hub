
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/widget/button_widget.dart';
import '../../widget/semester_screen_listview.dart';
import 'class_unit_screen.dart';

class FirstSemester extends StatelessWidget {
  const FirstSemester({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 1),
                child: Text(
                  "SELECT SUBJECT ?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
            ],
          ),
          ListView(
            shrinkWrap: true,
            children: [
              InkWell(
                onTap:  () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClassUnitScreen()));
                },
                child: const SemesterScreenListView(
                  semName: "English 1",
                ),
              ),
              InkWell(
                onTap: () {},
                child: const SemesterScreenListView(
                  semName: "Mathematics 1",
                ),
              ),
              InkWell(
                onTap: () {},
                child: const SemesterScreenListView(
                  semName: "Physics",
                ),
              ),
              InkWell(
                onTap: () {},
                child: const SemesterScreenListView(
                  semName: "Chemistry",
                ),
              ),
              InkWell(
                onTap: () {},
                child: const SemesterScreenListView(
                  semName: "Electrical and\nElectronics",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 110,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const ButtonWidget(
              icons: Icons.arrow_back_outlined,
              text: "Back",
              color: CColors.primaryButton,
            ),
          )
        ],
      ),
    ));
  }
}


