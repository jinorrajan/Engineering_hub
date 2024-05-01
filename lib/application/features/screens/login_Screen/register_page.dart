import 'package:engineering_hub/application/DataModel/service/auth_service.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import 'widget/custom_form_field.dart';
import 'widget/my_button.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();
  final void Function()? onTap;
  RegisterPage({super.key, this.onTap});

  void register(BuildContext context) {
    final _auth = AuthService();

    if (_passController.text == _confirmpassController.text) {
      try {
        _auth.signUpWithEmailPassword(
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
    // pass dont match tell use
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Password don't match!!"),
        ),
      );
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
            "Let's create account for you",
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
            height: 10,
          ),
          CustomTextField(
            hintText: 'Confirm Password',
            obscureText: true,
            controller: _confirmpassController,
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            text: 'Register',
            onTap: () => register(context),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
