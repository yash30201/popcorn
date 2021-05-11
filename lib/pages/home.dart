import 'package:flutter/material.dart';
import 'package:popcorn/constants/MockData.dart';
import 'package:popcorn/widgets/CarouselLarge.dart';
import 'package:popcorn/widgets/carouselSmall.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
              elevation: 5.0,
              title: Text(
                'POPCORN',
                style: Theme.of(context).textTheme.headline1,
              ),
              actions: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () => {Navigator.pushNamed(context, '/search')},
                    child: Icon(
                      Icons.search,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => {},
                    child: CircleAvatar(
                      backgroundColor: Colors.amberAccent,
                      radius: 18,
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.black.withOpacity(0.6),
              floating: true,
              pinned: true,
              expandedHeight: 160,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Anime',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'TV Shows',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Movies',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                ),
              )
              // backgroundColor: Colors.transparent,
              ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 280.0,
                  width: double.infinity,
                  child: CarouselLarge(),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSmall(
                  content: MockData.moviesportrait,
                  title: 'Continue Watching',
                ),
                CarouselSmall(
                  content: MockData.moviesportrait,
                  title: 'New Releases',
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSmall(
                  content: MockData.moviesportrait,
                  title: 'Trending',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
