import 'package:Dawir/singn_up/signUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:Dawir/home_page/home_page.dart';

import 'api/firebase_api.dart';
import 'get_started/get_started.dart';
import 'login_page/loginPage.dart';

void main() async {
  print('1');
  WidgetsFlutterBinding.ensureInitialized();
  print('2');
  await Firebase.initializeApp();
  print('3');
  await FirebaseApi().initNotifications(); // Corrected method name
  print('4');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}); // Fixed constructor syntax

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDataStyle.light, // Using the custom light theme
      home:  GetStarted(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignUp(),
        "/home": (context) => HomePage(),
      },
    );
  }
}

class ThemeDataStyle {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade100,
      primary: Colors.deepPurple.shade200,
      secondary: Colors.deepPurple.shade300,
    ),
  );
}
