import 'package:flutter/material.dart';
import 'package:twitch_clone/resources/auth_methods.dart';
import 'package:twitch_clone/utils/colors.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _usernameController =
      TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();

  final AuthMethods _authMethods = AuthMethods();

  void signUpUser() async {
    bool res = await _authMethods.signUpUser(
      context,
      _usernameController.text,
      _emailController.text,
      _passwordController.text,
    );
    if (res) {
      Navigator.pushReplacementNamed(
        context,
        HomeScreen.routeName,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'lib/assets/images/twitch1.png',
                scale: 8,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Sign Up'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextField(
                    controller: _emailController,
                    hintText: 'Enter your Email Address...',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextField(
                    controller: _usernameController,
                    hintText: 'Enter a Username...',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextField(
                    controller: _passwordController,
                    hintText: 'Enter your Password...',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  color: buttonColor,
                  onTap: signUpUser,
                  text: 'Sign Up',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
