import 'package:engineering_hub/application/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextModelQuestions extends StatelessWidget {
  const TextModelQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const TModelQuestions(
            tHeading: 'Series Test - 1',
            tSubHead: '02/01/2023',
          ),
          const TModelQuestions(
            tHeading: 'Series Test - 1',
            tSubHead: '02/01/2023',
          ),
          const TModelQuestions(
            tHeading: 'Series Test - 1',
            tSubHead: '02/01/2023',
          ),
          const TModelQuestions(
            tHeading: 'Series Test - 1',
            tSubHead: '02/01/2023',
          ),
          const TModelQuestions(
            tHeading: 'Series Test - 1',
            tSubHead: '02/01/2023',
          ),
          const TModelQuestions(
            tHeading: 'Series Test - 1',
            tSubHead: '02/01/2023',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 17, 213, 131),
                  onPrimary: Colors.black,
                  elevation: 12.0,
                  textStyle: GoogleFonts.roboto(color: Colors.black)),
              child: Text(
                "Back",
                style: GoogleFonts.roboto(fontSize: 20),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class TModelQuestions extends StatelessWidget {
  const TModelQuestions({
    super.key,
    required this.tHeading,
    required this.tSubHead,
  });
  final String tHeading;
  final String tSubHead;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Card(
        color: CColors.lightBackground,
        child: Container(
          height: 90,
          width: 380,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 17),
                child: Text(
                  tHeading,
                  style: GoogleFonts.roboto(fontSize: 23),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 1),
                child: Text(tSubHead),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
