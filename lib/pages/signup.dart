import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

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
              'Sign Up',
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
              hintText: 'First name',
              toObscure: false,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 20),
            myTextField(
              controller: _controller2,
              context: context,
              hintText: 'Last name',
              toObscure: false,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 20),
            myTextField(
              controller: _controller3,
              context: context,
              hintText: 'Email or phone number',
              toObscure: false,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 20),
            myTextField(
              controller: _controller4,
              context: context,
              hintText: 'Password',
              toObscure: true,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text(
                'Sign Up',
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
            Align(
              alignment: Alignment.centerRight,
              child: Text('Need help?', style: dimStyle),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Already have an account ? ',
                  style: dimStyle,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                    child: Text(
                      'Sign in',
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
