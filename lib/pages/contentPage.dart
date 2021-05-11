import 'package:flutter/material.dart';
import 'package:popcorn/models/Content.dart';
import 'package:popcorn/widgets/LandScapeClipper.dart';
import 'package:popcorn/widgets/ScreenShotsView.dart';
import 'package:share/share.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final double posterHeight = 350;
  final double iconsSize = 30;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Content content = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: Hero(
                    tag: content.posterUrl,
                    child: LandScapeClipper(
                      shadow: Shadow(
                        blurRadius: 20.0,
                        color: Theme.of(context).primaryColor,
                      ),
                      clipper: MyCustomClipper(),
                      child: Image(
                        height: posterHeight,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        image: AssetImage(content.posterUrl),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: ClipOval(
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.arrow_back,
                              size: iconsSize,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'POPCORN',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  bottom: 0,
                  right: 5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      child: RawMaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(10),
                        elevation: 12.0,
                        shape: CircleBorder(),
                        fillColor:
                            Theme.of(context).primaryColor.withOpacity(0.7),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 0,
                  left: 10,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            splashColor: Theme.of(context).primaryColor,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: iconsSize,
                            ),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            splashColor: Theme.of(context).primaryColor,
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: iconsSize,
                            ),
                            onTap: () {
                              Share.share(
                                  'Watch this amazing movie on Popcorn!\n' +
                                      content.title.toUpperCase() +
                                      ' - ' +
                                      content.posterUrl);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    content.title.toUpperCase(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 10),
                  Text(
                    content.tags,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        content.duration.toString() + ' min',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        '|',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        content.year.toString(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        '|',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        content.type,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 150,
                    child: SingleChildScrollView(
                      child: Text(
                        content.description,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ScreenShotView(
                    content: content.screenshots,
                    title: 'Screen Shots',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
