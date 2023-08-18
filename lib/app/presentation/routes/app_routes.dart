import 'package:flutter/material.dart';

import '../modules/home/views/home_view.dart';
import '../modules/movies/views/movies_view.dart';
import '../modules/series/views/serie_view.dart';
import '../modules/splash/view/splash_view.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (p0) => const SplashView(),
    Routes.home: (p0) => const HomeView(),
    Routes.movies: (p0) => const MoviesView(),
    Routes.series: (p0) => const SerieView()
  };
}
