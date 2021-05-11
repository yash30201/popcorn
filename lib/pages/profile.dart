import 'package:flutter/material.dart';
import 'package:popcorn/constants/myStyles.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double _dividerThickness = 1.0;
  final Color _dividerColor = Colors.white30;

  Widget tile({String title, BuildContext context}) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text('Profiles & More',
            style: Theme.of(context).textTheme.headline3),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: 'ProfilePhotoAnimatorHeroTag',
                  child: Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [PopStyles.shadowCarouselLarge],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, size: 30, color: Colors.white54),
                    SizedBox(width: 15),
                    Text('Edit', style: Theme.of(context).textTheme.headline5),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.message_rounded,
                      color: Colors.white54,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Tell Friends about Popcorn',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Text(
                  'Share this link so your friends can join the conversation around all your favourite TV shows and movies.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: Colors.white70,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Theme.of(context).accentColor.withOpacity(0.6),
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'popcorn.com/join?q=dkas',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              color: Colors.white70,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).accentColor.withOpacity(0.3)),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(horizontal: 10),
                            )),
                        child: Text(
                          'Copy Link',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: _dividerColor,
            thickness: _dividerThickness,
          ),
          tile(context: context, title: 'App Settings'),
          tile(context: context, title: 'Account'),
          tile(context: context, title: 'Upgrade Plan'),
          tile(context: context, title: 'Help'),
          tile(context: context, title: 'Sign Out'),
        ],
      ),
    );
  }
}
