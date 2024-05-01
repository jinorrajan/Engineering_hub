import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/colors.dart';
import 'text_notes.dart';

class SelectSubjectScreen extends StatelessWidget {
  const SelectSubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "SELECT SUBJECT ?",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const TextModelQuestions()));
                        },
                        child: const TSubScreen(semName: 'English 1')),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSubScreen(semName: 'Mathematic 1'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSubScreen(semName: 'Physics'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSubScreen(semName: 'Chemistry'),
                      const SizedBox(
                        height: 30,
                      ),
                      const TSubScreen(semName: 'Electrical and Electronics'),
                     
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

class TSubScreen extends StatelessWidget {
  const TSubScreen({
    super.key,
    required this.semName,
  });

  final String semName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
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
