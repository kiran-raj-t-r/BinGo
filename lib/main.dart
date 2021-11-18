import 'package:flutter/material.dart';
import 'package:w/screens/bottombar.dart';
import 'screens/loginscreen.dart';
import 'screens/signup.dart';
import 'screens/forgot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'waste demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        'forgotpassword': (context) => forgotpassword(),
        'signup': (context) => signup(),
        'userhome': (context) => Userhome(),
      },
    );
  }
}
