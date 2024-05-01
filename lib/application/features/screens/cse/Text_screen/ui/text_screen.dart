import 'package:engineering_hub/application/core/constants/colors.dart';
//import 'package:engineering_hub/application/core/constants/size.dart';
import 'package:engineering_hub/application/features/screens/cse/Text_screen/ui/select_semester.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Gchatting(
              imageUrl: 'assets/images/250.png',
              textt: 'Semester Test',
            ),
            SizedBox(
              height: 13,
            ),
            Gchatting(
              imageUrl: 'assets/images/250.png',
              textt: 'Coding Test',
            ),
            SizedBox(
              height: 13,
            ),
            Gchatting(
              imageUrl: 'assets/images/250.png',
              textt: 'General Test',
            ),
            SizedBox(
              height: 13,
            ),
            Gchatting(
              imageUrl: 'assets/images/250.png',
              textt: 'MCQ Test',
            ),
          ],
        ),
      ),
    ));
  }
}

class Gchatting extends StatelessWidget {
  const Gchatting({
    super.key,
    required this.imageUrl,
    required this.textt,
  });

  final String imageUrl;
  final String textt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Container(
        width: 390,
        height: 90,
        decoration: const BoxDecoration(color: CColors.lightBackground),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(213, 194, 196, 171),
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(image: AssetImage(imageUrl)),
                ),
              ),
            ),
            Text(
              textt,
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 25),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectSemesterScreen()),
                );
              },
              child: Icon(Icons.arrow_forward_ios),
              backgroundColor: CColors.primaryButton,
              foregroundColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
