class MovieModel {
  final int? id;
  final String? title;
  final String? overview;
  final String? poster_path;
  final int? runtime;
  final double? popularity;
  final double? vote_average;
  final String? release_date;
  final String? backdrop_path;

  const MovieModel(
      {required this.id,
      required this.title,
      required this.overview,
      required this.poster_path,
      required this.runtime,
      required this.popularity,
      required this.vote_average,
      required this.release_date,
      required this.backdrop_path});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      poster_path: json['poster_path'],
      runtime: json['runtime'],
      popularity: json['popularity'],
      release_date: json['release_date'],
      backdrop_path: json['backdrop_path'],
      vote_average: json['vote_average'] is int
          ? json['vote_average'].toDouble()
          : json['vote_average'],
    );
  }
}
