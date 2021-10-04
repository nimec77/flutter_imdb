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
      guards: [InitGuard],
      children: [
        AutoRoute<void>(
          path: 'movies-list',
          name: 'MoviesListRouter',
          page: MoviesListPage,
        ),
        AutoRoute<void>(
          path: 'movies-grid',
          name: 'MoviesGridRouter',
          page: MoviesGridPage,
        ),
        AutoRoute<void>(
          path: 'movies-search',
          name: 'MoviesSearchRouter',
          page: MoviesSearchPage,
        ),
      ],
    ),
    AutoRoute<bool>(
      path: 'init',
      page: InitPage,
    ),
  ],
)
class $AppRouter {}
