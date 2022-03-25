import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/movie_model.dart';
import '../services/api.dart';

class MovieScreen extends StatelessWidget {
  static const String id = 'movie_screen';

  Api api = Api();
  var image_url = 'https://image.tmdb.org/t/p/w500/';
  final MovieModel snapshot;

  MovieScreen({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    (image_url + (snapshot.backdrop_path ?? '')),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 240),
                height: 80,
                width: 410,
                color: kBackgroundColor2,
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 350),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                child: Text(
                  snapshot.overview ?? '',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
