import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login() {}

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
          Text("Welcome back",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              )),
          SizedBox(
            height: 25,
          ),
          // pw textfield
          MyTextfield(
            hintText: 'email',
            controller: _emailController,
            obscureText: false,
          ),

          SizedBox(
            height: 10,
          ),

          MyTextfield(
            hintText: 'password',
            controller: _pwController,
            obscureText: true,
          ),
          // login button
          const SizedBox(
            height: 25,
          ),
          MyButton(
            text: 'Login',
            onTap: login,
          ),

          const SizedBox(
            height: 25,
          ),
          // register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'Register now',
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
