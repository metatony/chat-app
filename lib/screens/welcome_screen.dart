import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

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
                children: [
                  SizedBox(
                    height: 55.0,
                    child: Image.asset('images/logo.png'),
                  ),
                  const Text(
                    'chat',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
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
                  Navigator.pushNamed(context, 'login_screen');
                },
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: Colors.black,
                height: 55,
                minWidth: 200,
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'registration_screen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
