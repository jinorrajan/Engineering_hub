
import 'package:engineering_hub/application/features/screens/cse/home_screen/ui/home_csee_screen.dart';
import 'package:engineering_hub/application/features/screens/cse/project_screen/ui/project_screen.dart';
import 'package:engineering_hub/main_pages/widget/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../application/features/screens/cse/Text_screen/ui/text_screen.dart';
import '../application/features/screens/cse/chatting_screen/ui/chatting_screen.dart';
import '../application/features/screens/cse/semester_screen/ui/semester_screen.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    HomeCse(),
    SelectSemesterScreen(),
    ProjectScreen(),
    TextScreen(),
    ChattingScreen(),
  ];
  //ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
