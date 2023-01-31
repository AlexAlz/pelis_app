// ignore_for_file: avoid_unnecessary_containers

import 'package:pelis_app/providers/movies_provider.dart';
import 'package:pelis_app/screens/screen_Barrel.dart';
import 'package:pelis_app/widgets/widgets_Barrel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas'),
          actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.search))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(
                movies: moviesProvider.onDisplayMovies,
              ),
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares',
              ),
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Feas',
              ),
            ],
          ),
        ));
  }
}
