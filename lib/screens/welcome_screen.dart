import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/register_button.dart';
import 'package:page_transition/page_transition.dart';

import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'welcome',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                ),
                height: 55,
                minWidth: 200,
                child: const Text('Login'),
                onPressed: () {
                  //Navigator.pushNamed(context, 'login_screen');
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          type: PageTransitionType.leftToRight,
                          child: const LoginScreen()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              RegisterButton(
                onpPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          type: PageTransitionType.leftToRight,
                          child: const RegistrationScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
