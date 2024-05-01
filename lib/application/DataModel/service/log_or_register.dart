import 'package:engineering_hub/application/features/screens/login_Screen/login_page.dart';
import 'package:engineering_hub/application/features/screens/login_Screen/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

bool showLoginPage = true;

void tooglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(
        onTap: tooglePages,
      );
    }else{
      return RegisterPage(
         onTap: tooglePages,
      );
    }
  }
}