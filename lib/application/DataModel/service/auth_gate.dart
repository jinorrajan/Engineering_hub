import 'package:engineering_hub/application/DataModel/service/log_or_register.dart';
import 'package:engineering_hub/application/features/screens/selecting_screen/ui/selecting_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
             return  SelectingScreen();
          }
         else{
          return const LoginOrRegisterPage();
        }
        },

        
      ),
    );
  }
}