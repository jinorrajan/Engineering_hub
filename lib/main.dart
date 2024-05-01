
import 'package:engineering_hub/application/DataModel/service/log_or_register.dart';
import 'package:engineering_hub/application/features/screens/cse/semester_screen/ui/semester_screen.dart';
import 'package:engineering_hub/application/features/screens/login_Screen/login_page.dart';
import 'package:engineering_hub/firebase_options.dart';
import 'package:engineering_hub/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/DataModel/service/auth_gate.dart';
import 'application/core/constants/colors.dart';
import 'application/features/screens/cse/home_screen/ui/home_csee_screen.dart';
import 'application/features/screens/selecting_screen/ui/selecting_screen.dart';


int? selctingScreen;

Future<void> main() async{
 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform );
  SharedPreferences preferences = await SharedPreferences.getInstance();
  selctingScreen = await preferences.getInt('selctingScreen');
  await preferences.setInt('selctingScreen',0);
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
      
      home: AuthGate(),
    );
  }
}


