import 'dart:convert';

import 'package:pelis_app/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:pelis_app/screens/screen_Barrel.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = 'b51d83adc765e77cd24a26c623ac58ec';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    print('Servicio iniciado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    // Await the http get response, then decode the json-formatted response.

    final response = await http.get(url);
    final playingResponse = NowPlayingResponse.fromJson(response.body);

    onDisplayMovies = playingResponse.results;
    notifyListeners();
  }
}
