import 'package:flutter/material.dart';
import 'package:popcorn/constants/myStyles.dart';

class CarouselSmall extends StatelessWidget {
  final List<dynamic> content;
  final String title;
  final double _height = 250.0;
  final double _width = 150.0;

  CarouselSmall({
    this.title,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.headline3,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => {},
                  splashColor: Theme.of(context).primaryColor,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).accentColor,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: _height,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: content.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                width: _width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [PopStyles.shadowCarouselSmall],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Material(
                    child: InkWell(
                      onTap: () => {},
                      child: Image(
                        image: AssetImage(content[index][0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
