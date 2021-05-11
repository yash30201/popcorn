import 'package:flutter/material.dart';

class PopStyles {
  // static const
  static ThemeData get theme_1 {
    return ThemeData(
      primaryColor: Color(0xff892cdc),
      accentColor: Color(0xffbc6ff1),
      backgroundColor: Color(0xff000000),
      fontFamily: 'Georgia',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color(0xffbc6ff1),
        ),
        headline2: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xffbc6ff1),
        ),
        bodyText1: TextStyle(
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            color: Colors.white),
        bodyText2: TextStyle(
          fontSize: 22,
          fontFamily: 'Roboto',
          color: Colors.white,
        ),
        headline3: TextStyle(
          fontSize: 20,
          fontFamily: 'Sans-serif',
          color: Color(0xffbc6ff1),
        ),
        headline4: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  static BoxShadow get shadowCarouselLarge {
    return BoxShadow(
      color: Color(0xff892cdc).withOpacity(0.5),
      blurRadius: 10.0,
      spreadRadius: 1.0,
    );
  }

  static BoxShadow get shadowCarouselSmall {
    return BoxShadow(
      color: Color(0xff892cdc).withOpacity(0.5),
      blurRadius: 10.0,
      spreadRadius: 1.0,
    );
  }
}

//  style: Theme.of(context).textTheme.headline6,
// MediaQuery.of(context).size.width * 0.5,
