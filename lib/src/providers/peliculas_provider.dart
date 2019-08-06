import 'dart:convert';

import 'package:peliculas/src/models/pelicula_model.dart';
import 'package:http/http.dart' as http;

class PeliculasProvider{

  String _apikey   = 'bfde7716a0bcf6b7f84590056625d050';
  String _url      = 'api.themoviedb.org';
  String _language = 'es_ES';

  Future<List<Pelicula>> getEnCines() async {

    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key' : _apikey,
      'language': _language
    });

    final resp = await http.get(url);
    final decodeData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJsonList(decodeData['results']);
    
    //rint(peliculas.items[])
    //print(decodeData['results']);
    return peliculas.items;

  }

}