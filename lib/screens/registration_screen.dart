import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'enter your email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'enter your password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'confirm your password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),
              const SizedBox(
                height: 30,
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
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
