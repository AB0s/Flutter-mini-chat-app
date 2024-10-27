import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(Icons.message,
              size: 60, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 60),
          // email textfield
          Text("Create account",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              )),
          const SizedBox(
            height: 25,
          ),
          // pw textfield
          MyTextfield(
            hintText: 'email',
            controller: _emailController,
            obscureText: false,
          ),

          const SizedBox(
            height: 10,
          ),

          MyTextfield(
            hintText: 'password',
            controller: _pwController,
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),

          MyTextfield(
            hintText: 'Confirm password',
            controller: _confirmPwController,
            obscureText: false,
          ),
          // login button
          const SizedBox(
            height: 25,
          ),
          MyButton(
            text: 'Register',
            onTap: register,
          ),

          const SizedBox(
            height: 25,
          ),
          // register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have an account?',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'Login now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
