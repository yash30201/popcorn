import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//  declared stateful because we may need to run some async code before loading the application
class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  void checkPageToDisplay() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('username')) {
      // Means user is already logged in and has auth token, so we can bypass login
      Navigator.pushReplacementNamed(context, '/home');
    } else
      Navigator.pushReplacementNamed(context, '/signup');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'POPCORN',
              textStyle: TextStyle(
                fontSize: 50,
                fontFamily: 'Horizon',
              ),
              colors: [
                Theme.of(context).accentColor,
                Theme.of(context).accentColor.withAlpha(150),
                Theme.of(context).primaryColor.withAlpha(100),
                Theme.of(context).primaryColor.withAlpha(200),
                Theme.of(context).primaryColor,
                Colors.black,
              ],
              speed: Duration(milliseconds: 400),
            ),
          ],
          totalRepeatCount: 1,
          isRepeatingAnimation: false,
          onFinished: () {
            checkPageToDisplay();
          },
        ),
      ),
    );
  }
}
