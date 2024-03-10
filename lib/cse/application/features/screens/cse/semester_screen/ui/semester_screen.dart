import 'package:engineering_hub/cse/application/features/screens/cse/semester_screen/ui/semesters/first_semester.dart';
import 'package:engineering_hub/cse/application/features/screens/cse/semester_screen/widget/semester_screen_listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectSemesterScreen extends StatelessWidget {
  const SelectSemesterScreen({super.key});

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
                    "SELECT YOUR SEMESTER ?",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView(
              children:  [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FirstSemester()));
                  },
                  child: const SemesterScreenListView(
                    semName: "first Semester",
                  ),
                ),
                InkWell(
                  onTap: () {
                  },
                  child: const SemesterScreenListView(
                    semName: "Second Semester",
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: const SemesterScreenListView(
                    semName: "Third Semester",
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: const SemesterScreenListView(
                    semName: "Fourth Semester",
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: const SemesterScreenListView(
                    semName: "Fifth Semester",
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: const SemesterScreenListView(
                    semName: "Sixth Semester",
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: const SemesterScreenListView(
                    semName: "Seventh Semester",
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: const SemesterScreenListView(
                    semName: "Eight Semester",
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
