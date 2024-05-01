import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/colors.dart';
import 'select_subject.dart';

class SelectSemesterScreen extends StatelessWidget {
  const SelectSemesterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "SELECT YOUR SEMESTER ?",
              style: GoogleFonts.roboto(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Stack(
              children: [
                Container(
                  height: 780,
                  width: double.infinity,
                  child:  SingleChildScrollView(
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SelectSubjectScreen()));
                        },
                        child: const TSemesterScreen(semName: 'First Semester')),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Second Semester'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Third Semester'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Fourth Semester'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Fifth Semester'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Sixth Semester'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Seventh Semester'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSemesterScreen(semName: 'Eight Semester'),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 730,left: 160),
                  child: ElevatedButton(
                    onPressed: () {Navigator.pop(context);},
                    
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 17, 213, 131),
                      onPrimary: Colors.black,
                        elevation: 12.0,
                        textStyle: GoogleFonts.roboto(color: Colors.black)),
                        
                    child: Text("Back",style: GoogleFonts.roboto(fontSize: 20),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TSemesterScreen extends StatelessWidget {
  const TSemesterScreen({
    super.key,
    required this.semName,
  });

  final String semName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Card(
        elevation: 10,
        shadowColor: const Color.fromARGB(231, 61, 61, 61),
        child: Container(
          color: CColors.secondaryButton,
          height: 69,
          width: 360,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  semName,
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: CColors.textPrimary),
                ),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
