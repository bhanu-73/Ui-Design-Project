import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
import 'pages/login_page.dart';
import 'pages/registration_page.dart';
import 'pages/home_page.dart';
import 'pages/edit_profile_page.dart';
import 'pages/settings_page.dart';
import 'pages/not_implemented_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Normal UI',
      initialRoute: 'welcomePage',
      routes: {
        'welcomePage' : (context) => const WelcomePage(),
        'loginPage' : (context) => const LoginPage(),
        'registrationPage' : (context) => const RegisterPage(),
        'homePage' : (context) => const Home(),
        'editProfile' : (context) => const EditProfile(),
        'settings' : (context) => const Settings(),
        'notImplemented': (context) => const Niy()
      },
    );
  }
}

