import 'package:flutter/material.dart';
import 'package:twitch_clone/screens/login_screen.dart';
import 'package:twitch_clone/screens/signup_screen.dart';

import '../utils/colors.dart';
import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/Twitch_logo.png',
             
            ),
            Text(
              'Welcome to \n Twitch 👋',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'Log in',
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                color: buttonColor),
            CustomButton(
              text: 'Sign up',
              onTap: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    ));
  }
}
