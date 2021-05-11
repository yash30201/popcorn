import 'package:flutter/material.dart';
import 'package:popcorn/constants/myStyles.dart';
import 'package:popcorn/pages/contentPage.dart';
import 'package:popcorn/pages/home.dart';
import 'package:popcorn/pages/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Popcorn',
      initialRoute: '/home',
      theme: PopStyles.theme_1,
      routes: {
        // '/login' : (context) => SignIn();
        '/home': (context) => Home(),
        '/contentPage': (context) => ContentPage(),
        '/search': (context) => Search(),
      },
    );
  }
}
