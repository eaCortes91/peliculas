class Peliculas{

  List<Pelicula> items = new List();
  Peliculas();
  Peliculas.fromJsonList( List<dynamic> jsonList){
    if(jsonList == null)return;
    for(var item in jsonList){
      final pelicula = new Pelicula.fromJsonMAp(item);
      items.add(pelicula);
    }
  }
}


class Pelicula {
  int voteCount;
  int id;
  bool video;
  double voteAverage;
  String title;
  double popularity;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String backdropPath;
  bool adult;
  String overview;
  String releaseDate;

  Pelicula({
    this.voteCount,
    this.id,
    this.video,
    this.voteAverage,
    this.title,
    this.popularity,
    this.posterPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.backdropPath,
    this.adult,
    this.overview,
    this.releaseDate,
  });

  Pelicula.fromJsonMAp(Map<String, dynamic>json){

    voteCount        = json['vote_count'];
    id               = json['id'];
    video            = json['video'];
    voteAverage      = json['vote_average'] / 1;
    title            = json['title'];
    popularity       = json['popularity'] / 1;
    posterPath       = json['poster_path'];
    originalLanguage = json['original_language'];
    originalTitle    = json['original_title'];
    genreIds         = json['genre_ids'].cast<int>();
    backdropPath     = json['backdrop_path'];
    adult            = json['adult'];
    overview         = json['overview'];
    releaseDate      = json['release_date'];
  }

  getPosterImg(){

    if(posterPath == null){
      return 'http://cdn8.bigcommerce.com/s-auu4kfi2d9/stencil/cc75d450-b2b3-0135-7293-525400dfdca6/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    }
    else{
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
}


