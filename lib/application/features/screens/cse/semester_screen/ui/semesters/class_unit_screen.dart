//import 'dart:ffi';


import 'package:engineering_hub/application/features/screens/cse/semester_screen/ui/semesters/video_screen.dart';
import 'package:engineering_hub/main_pages/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/size.dart';
import '../../../../../../core/widget/button_widget.dart';
import '../../widget/vedio_container.dart';

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
        body: const TabBarView(
          children: [
            UnitsScreens(headings1: 'TECHNICAL ENGLISH – I',topic1: 'Verb-Tenses - 12 Tenses -8 Passive Forms - Word formation with prefixes and suffixes'),
            UnitsScreens(headings1: 'Heading of unit',topic1: 'Introduction - Basic python - Variable - Arthematic operator - Logic of python - Exercise - oops - Web scrabbing'),
            UnitsScreens(headings1: 'Heading of unit',topic1: 'Introduction - Basic python - Variable - Arthematic operator - Logic of python - Exercise - oops - Web scrabbing'),
            UnitsScreens(headings1: 'Heading of unit',topic1: 'Introduction - Basic python - Variable - Arthematic operator - Logic of python - Exercise - oops - Web scrabbing'),
            UnitsScreens(headings1: 'Heading of unit',topic1: 'Introduction - Basic python - Variable - Arthematic operator - Logic of python - Exercise - oops - Web scrabbing'),
          ],
        ),
        
      ),
    );
  }
}

class UnitsScreens extends StatelessWidget {
  const UnitsScreens({
    super.key, required this.headings1,  required this.topic1,
  });
 
 final String headings1;
 final String topic1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheight10,
          Center(
            child: Text(
              headings1,
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
              height: 90,
              width: 700,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: CColors.greyBorder),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 13),
                child: SingleChildScrollView(
                  child: Text(
                    topic1,
                    style: GoogleFonts.roboto(fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          kheight20,
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Videos:',
              style: GoogleFonts.roboto(fontSize: 18),
            ),
          ),
          kheight10,
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Container(
              height: 340,
              width: 640,
              decoration: const  BoxDecoration(),
              child: Container(
                color: CColors.lightBackground,
                height: 320,
                width: 600,
                child: ListView(
                  children: [
                    InkWell(
                      onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoScreen(),),);},
                      child: const VideoContainer(
                        text1: 'Verb-Tenses',
                      ),
                    ),
                    kheight10,
                    InkWell(
                       onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoScreen(),),);},
                      child: const VideoContainer(
                        text1: '12 Tenses',
                      ),
                    ),
                    kheight10,
                    InkWell(
                       onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoScreen(),),);},
                      child: const VideoContainer(
                        text1: '8 Passive Forms',
                      ),
                    ),
                    kheight10,
                    InkWell(
                       onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoScreen(),),);},
                      child: const VideoContainer(
                        text1: 'Word formation with prefixes\n and suffixes',
                      ),
                    ),
                    kheight10,
                   
                  ],
                ),
              ),
            ),
          ),
          kheight10,
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Notes:',
              style: GoogleFonts.roboto(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: CColors.greyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //kwidth20,
                  Padding(
                    padding: const EdgeInsets.only(right: 0, left: 10),
                    child: Text(
                      'Unit heading',
                      style: GoogleFonts.roboto(fontSize: 15),
                    ),
                  ),
      
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                        backgroundColor: CColors.primaryButton,
                        radius: 18,
                        child: Icon(Icons.notes_outlined)),
                  ),
                ],
              ),
            ),
          ),
          kheight35,
           BottomStack(),
        ],
      ),
    );
  }
}

class BottomStack extends StatelessWidget {
  const BottomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
                  Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           InkWell(
                             onTap: (){
                               Navigator.pop(context);
                             },
                             child: const Padding(
                               padding: EdgeInsets.only(left: 15),
                               child: ButtonWidget(
                                 icons: Icons.arrow_back_outlined,
                                 text: "Back",
                                 color: CColors.primaryButton,
                               ),
                             ),
                           ),
                           InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenMainPage()));
                             },
                             child: const Padding(
                               padding: EdgeInsets.only(right: 15),
                               child: ButtonWidget(
                                 icons: Icons.home_filled,
                                 text: "Home",
                                 color: CColors.primaryButton,
                               ),
                             ),
                           ),
                         ],
                  ),
                ],
    );
  }
}
