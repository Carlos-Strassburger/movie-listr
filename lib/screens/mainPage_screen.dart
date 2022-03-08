import 'package:flutter/material.dart';
import 'package:movie_listr/constants.dart';

class MainPageScreen extends StatefulWidget {
  static const String id = 'mainPage_screen';

  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        toolbarOpacity: 1,
        bottomOpacity: 0,
        backgroundColor: kBackgroundColor,
        title: Center(
          child: Text(
            'MOVIE LISTR',
            style: kTitleTextStyle.copyWith(color: kGreenColor, fontSize: 35.0),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: const Icon(
            Icons.menu,
            color: kGreenColor,
          ),
          splashRadius: 25,
          iconSize: 40.0,
          color: kBackgroundColor,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: kGreenColor,
            ),
            splashRadius: 25,
            iconSize: 40.0,
            color: kBackgroundColor,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const Text(
                'Recommended',
                style: const TextStyle(
                  color: kGreenColor,
                  fontSize: 22.0,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Trending',
                style: TextStyle(
                  color: kGreenColor,
                  fontSize: 22.0,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Coming Soon',
                style: TextStyle(
                  color: kGreenColor,
                  fontSize: 22.0,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                        kMoviePosterIcon,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
