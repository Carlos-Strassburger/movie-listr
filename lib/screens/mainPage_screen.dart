import 'package:flutter/material.dart';
import 'package:movie_listr/components/movie_poster.dart';
import 'package:movie_listr/constants.dart';
import 'package:movie_listr/services/api.dart';

import '../components/appBar.dart';
import '../models/movie_model.dart';
import '../services/api.dart';

class MainPageScreen extends StatefulWidget {
  static const String id = 'mainPage_screen';

  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  Api api = Api();
  late Future<List<MovieModel>> futureTopRated;
  late Future<List<MovieModel>> futureDiscover;

  @override
  void initState() {
    super.initState();
    setState(() {
      futureTopRated = api.getTopRated();
      futureDiscover = api.getDiscover();
    });
  }

  var image_url = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                const Text(
                  'Discover',
                  style: TextStyle(
                      color: kGreenColor,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                  child: const Text('Show all'),
                )
              ],
            ),
            SingleChildScrollView(
              child: Container(
                height: 220,
                child: FutureBuilder<List<MovieModel>>(
                  future: futureDiscover,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return MoviePoster(snapshot: snapshot);
                    } else {
                      // print('snapshot: $snapshot');
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'Top Rated',
                  style: TextStyle(
                    color: kGreenColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                  child: const Text('Show all'),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                height: 220,
                child: FutureBuilder<List<MovieModel>>(
                  future: futureTopRated,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return MoviePoster(snapshot: snapshot);
                    } else {
                      // print('snapshot: $snapshot');
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
