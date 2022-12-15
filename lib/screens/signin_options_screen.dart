import 'package:flutter/material.dart';

import '/widgets/sign_in_button.dart';

class SignInOptionsScreen extends StatelessWidget {
  const SignInOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -15,
          child: Container(
            width: 60,
            height: 7,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 20),
            SignInButton(
              onTap: () {},
              iconPath: 'assets/logos/email.png',
              textLabel: 'Sign in with email',
              elevation: 5,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            const Center(child: Text('OR', style: TextStyle(fontSize: 18))),
            const SizedBox(height: 30),
            SignInButton(
              onTap: () {},
              iconPath: 'assets/logos/google.png',
              textLabel: 'Sign in with Google',
              elevation: 0,
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(height: 14),
            SignInButton(
              onTap: () {},
              iconPath: 'assets/logos/facebook.png',
              textLabel: 'Sign in with Facebook',
              elevation: 0,
              backgroundColor: Colors.blue.shade300,
            ),
          ],
        )
      ],
    );
  }
}
