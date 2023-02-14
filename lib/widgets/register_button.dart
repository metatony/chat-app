import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.onpPressed,
  });
  final Function()? onpPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
      onPressed: onpPressed,
        //Navigator.pushNamed(context, 'registration_screen');
      
    );
  }
}
