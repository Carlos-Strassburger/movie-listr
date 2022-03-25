import 'package:flutter/material.dart';
import 'package:movie_listr/constants.dart';
import 'package:movie_listr/components/rounded_button.dart';
import 'package:movie_listr/screens/login_screen.dart';
import 'package:movie_listr/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'MOVIE LISTR',
              textAlign: TextAlign.center,
              style: kTitleTextStyle.copyWith(color: kGreenColor),
            ),
            const SizedBox(
              height: 50.0,
            ),
            RoundedButton(
              color: kGreenColor,
              title: 'Log in',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Sign up',
              color: kGreenColor,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
