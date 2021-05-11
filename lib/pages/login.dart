import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final Color checkBoxColor = Colors.white54;

  bool checkBoxState = false;

  final TextStyle dimStyle = TextStyle(
    fontSize: 16,
    color: Colors.white54,
    fontFamily: 'Roboto',
  );

  TextField myTextField({
    TextEditingController controller,
    BuildContext context,
    String hintText,
    bool toObscure,
    TextInputAction textInputAction,
  }) {
    return TextField(
      textInputAction: textInputAction,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Theme.of(context).accentColor.withOpacity(0.5),
            width: 2.0,
          ),
        ),
        fillColor: Theme.of(context).accentColor.withOpacity(0.15),
        filled: true,
        hintText: hintText,
        hintStyle: dimStyle,
      ),
      style: dimStyle,
      obscureText: toObscure,
    );
  }

  processData({String username, String password, BuildContext context}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('password', password);
    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child:
                  Text('POPCORN', style: Theme.of(context).textTheme.headline1),
            ),
            SizedBox(height: 50),
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 40),
            myTextField(
              controller: _controller1,
              context: context,
              hintText: 'Email or phone number',
              toObscure: false,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 20),
            myTextField(
              controller: _controller2,
              context: context,
              hintText: 'Password',
              toObscure: true,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                processData(
                  username: _controller1.text,
                  password: _controller2.text,
                  context: context,
                );
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
              style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all<Size>(Size(double.infinity, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).accentColor.withAlpha(100)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: checkBoxState,
                  onChanged: (value) {
                    setState(() {
                      checkBoxState = !checkBoxState;
                    });
                  },
                  activeColor: checkBoxColor,
                  fillColor: MaterialStateProperty.all<Color>(checkBoxColor),
                  splashRadius: 10,
                ),
                Text('Remember me', style: dimStyle),
                Spacer(),
                Text('Need help?', style: dimStyle),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'New to Popcorn ? ',
                  style: dimStyle,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Container(
                    child: Text(
                      'Sign up now',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
