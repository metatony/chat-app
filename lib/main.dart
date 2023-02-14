import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      // initialRoute: WelcomeScreen.id,
      // routes: {
      //   WelcomeScreen.id: (context) => const WelcomeScreen(),
      //   LoginScreen.id: (context) => const LoginScreen(),
      //   RegistrationScreen.id: (context) => const RegistrationScreen(),
      //   SplashScreen.id: (context) => const SplashScreen(),
      // },
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        
      ),
    );
  }
}
