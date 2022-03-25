import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:movie_listr/models/movie_model.dart';

const url = 'https://api.themoviedb.org/3';
const apiKey = 'c3da6eda9c818b1d688c7568836d8a5f';

class Api {
  Future<List<MovieModel>> getTopRated() async {
    var url =
        'http://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey&language=en-US';
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      final parsed =
          json.decode(response.body)['results'].cast<Map<String, dynamic>>();
      print(parsed);
      return parsed
          .map<MovieModel>((json) => MovieModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load list');
    }
  }

  Future<List<MovieModel>> getDiscover() async {
    var url =
        'https://api.themoviedb.org/3/discover/movie?api_key=$apiKey&language=en-US&sort_by=popularity.desc';
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      final parsed =
          json.decode(response.body)['results'].cast<Map<String, dynamic>>();
      return parsed
          .map<MovieModel>((json) => MovieModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load list');
    }
  }
}
