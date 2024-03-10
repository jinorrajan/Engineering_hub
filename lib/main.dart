//import 'package:engineering_hub/application/core/constants/colors.dart';
//import 'package:engineering_hub/application/features/screens/selecting_screen/ui/selecting_screen.dart';
import 'package:engineering_hub/cse/application/core/constants/colors.dart';
import 'package:engineering_hub/cse/application/features/screens/selecting_screen/ui/selecting_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: CColors.lightBackground
      ),
      
      home: SelectingScreen(),
    );
  }
}


