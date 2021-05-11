import 'package:flutter/material.dart';
import 'package:popcorn/constants/MockData.dart';
import 'package:popcorn/constants/myStyles.dart';

class CarouselLarge extends StatefulWidget {
  @override
  _CarouselLargeState createState() => _CarouselLargeState();
}

class _CarouselLargeState extends State<CarouselLarge> {
  PageController _pageController;
  var movies = [];

  @override
  void initState() {
    super.initState();
    movies = MockData.movieslandscape;
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.33) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (_) => MovieScreen(movie: movies[index]),
        //   ),
        // ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [PopStyles.shadowCarouselLarge],
                ),
                child: Center(
                  child: Hero(
                    tag: movies[index][0],
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(movies[index][0]),
                        height: 220.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    movies[index][1].toUpperCase(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return _movieSelector(index);
      },
    );
  }
}
