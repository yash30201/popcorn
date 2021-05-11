import 'package:flutter/material.dart';

//  declared stateful because we may need to run some async code before loading the application
class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
