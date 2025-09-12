import 'package:flutter/material.dart';
import 'theme.dart';
import 'routes.dart';
import 'screens/landing_page.dart';
import 'screens/signup_page.dart';
import 'screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'sDUO',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => const LandingPage(),
        Routes.signup: (context) => const SignUpPage(),
        Routes.welcome: (context) => const WelcomePage(),
      },
      theme: AppTheme.themeData,
    );
  }
}
