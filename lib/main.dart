import 'package:flutter/material.dart';
import 'package:popcorn/constants/myStyles.dart';
import 'package:popcorn/pages/contentPage.dart';
import 'package:popcorn/pages/home.dart';
import 'package:popcorn/pages/loading.dart';
import 'package:popcorn/pages/login.dart';
import 'package:popcorn/pages/profile.dart';
import 'package:popcorn/pages/search.dart';
import 'package:popcorn/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Popcorn',
      initialRoute: '/loader',
      theme: PopStyles.theme_1,
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/home': (context) => Home(),
        '/contentPage': (context) => ContentPage(),
        '/search': (context) => Search(),
        '/profile': (context) => Profile(),
        '/loader': (context) => Loader(),
      },
    );
  }
}
