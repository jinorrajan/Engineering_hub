
import 'package:flutter/material.dart';

import '../../application/core/constants/colors.dart';
 ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
// ignore: must_be_immutable
class BottomNavigationWidget extends StatelessWidget {
  BottomNavigationWidget({super.key});

 
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          currentIndex: newIndex,
          backgroundColor: CColors.lightBackground,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CColors.primary,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.my_library_books_outlined), label: 'Semster'),
            BottomNavigationBarItem(
                icon: Icon(Icons.paste_outlined), label: 'Project'),
            BottomNavigationBarItem(
                icon: Icon(Icons.paste_outlined), label: 'Test'),
                 BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: 'Chatting'),
          ],
        );
      },
    );
  }
}
