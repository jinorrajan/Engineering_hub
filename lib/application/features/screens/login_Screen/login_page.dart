import 'package:engineering_hub/application/DataModel/service/auth_service.dart';
import 'package:engineering_hub/application/core/constants/colors.dart';
import 'package:engineering_hub/application/features/screens/login_Screen/widget/custom_form_field.dart';
import 'package:engineering_hub/application/features/screens/login_Screen/widget/my_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  final void Function()? onTap;
  LoginPage({super.key, this.onTap});

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
        _emailController.text,
        _passController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.message,
            size: 60,
            color: CColors.greenBorder,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Welcome back, You've been missed",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            hintText: 'Email',
            obscureText: false,
            controller: _emailController,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: 'Password',
            obscureText: true,
            controller: _passController,
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            text: 'LogIN',
            onTap: () => login(context),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a user? "),
              GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
