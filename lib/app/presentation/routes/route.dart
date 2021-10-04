import 'package:auto_route/annotations.dart';
import 'package:flutter_imdb/app/presentation/pages/app_page.dart';
import 'package:flutter_imdb/app/presentation/pages/init_page.dart';
import 'package:flutter_imdb/app/presentation/routes/init_guard.dart';
import 'package:flutter_imdb/movies/presentation/pages/movies_grid_page.dart';
import 'package:flutter_imdb/movies/presentation/pages/movies_list_page.dart';
import 'package:flutter_imdb/movies/presentation/pages/movies_search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(
      path: '/',
      page: AppPage,
      name: 'AppRoute',
      guards: [InitGuard],
      children: [
        AutoRoute<void>(
          path: 'movies-list',
          name: 'MoviesListRoute',
          page: MoviesListPage,
        ),
        AutoRoute<void>(
          path: 'movies-grid',
          name: 'MoviesGridRoute',
          page: MoviesGridPage,
        ),
        AutoRoute<void>(
          path: 'movies-search',
          name: 'MoviesSearchRoute',
          page: MoviesSearchPage,
        ),
      ],
    ),
    AutoRoute<bool>(
      path: 'init',
      page: InitPage,
      name: 'InitRoute',
    ),
  ],
)
class $AppRouter {}
