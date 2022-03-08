import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/mainPage_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MovieListr());
}

class MovieListr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        MainPageScreen.id: (context) => MainPageScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
    );
  }
}
