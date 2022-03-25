import 'package:flutter/material.dart';
import 'package:movie_listr/screens/movie_screen.dart';

import '../models/movie_model.dart';

class MoviePoster extends StatelessWidget {
  final AsyncSnapshot<List<MovieModel>> snapshot;
  MoviePoster({required this.snapshot});

  var image_url = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.length,
        itemBuilder: (context, id) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: InkWell(
                child: Ink(
                  width: 140,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          image_url + snapshot.data![id].poster_path!),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MovieScreen(snapshot: snapshot.data![id])),
                );
              },
            ),
          );
        });
  }
}
