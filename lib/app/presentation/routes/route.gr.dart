// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../../movies/presentation/pages/movies_grid_page.dart' as _i4;
import '../../../movies/presentation/pages/movies_list_page.dart' as _i3;
import '../../../movies/presentation/pages/movies_search_page.dart' as _i5;
import '../pages/app_page.dart' as _i1;
import '../pages/init_page.dart' as _i2;
import 'init_guard.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.initGuard})
      : super(navigatorKey);

  final _i8.InitGuard initGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i1.AppPage());
    },
    InitRoute.name: (routeData) {
      final args = routeData.argsAs<InitRouteArgs>();
      return _i6.MaterialPageX<bool>(
          routeData: routeData,
          child: _i2.InitPage(key: args.key, onResult: args.onResult));
    },
    MoviesListRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i3.MoviesListPage());
    },
    MoviesGridRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i4.MoviesGridPage());
    },
    MoviesSearchRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i5.MoviesSearchPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(AppRoute.name, path: '/', guards: [
          initGuard
        ], children: [
          _i6.RouteConfig(MoviesListRoute.name, path: 'movies-list'),
          _i6.RouteConfig(MoviesGridRoute.name, path: 'movies-grid'),
          _i6.RouteConfig(MoviesSearchRoute.name, path: 'movies-search')
        ]),
        _i6.RouteConfig(InitRoute.name, path: 'init')
      ];
}

/// generated route for [_i1.AppPage]
class AppRoute extends _i6.PageRouteInfo<void> {
  const AppRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AppRoute';
}

/// generated route for [_i2.InitPage]
class InitRoute extends _i6.PageRouteInfo<InitRouteArgs> {
  InitRoute({_i7.Key? key, required void Function(bool) onResult})
      : super(name,
            path: 'init', args: InitRouteArgs(key: key, onResult: onResult));

  static const String name = 'InitRoute';
}

class InitRouteArgs {
  const InitRouteArgs({this.key, required this.onResult});

  final _i7.Key? key;

  final void Function(bool) onResult;
}

/// generated route for [_i3.MoviesListPage]
class MoviesListRoute extends _i6.PageRouteInfo<void> {
  const MoviesListRoute() : super(name, path: 'movies-list');

  static const String name = 'MoviesListRoute';
}

/// generated route for [_i4.MoviesGridPage]
class MoviesGridRoute extends _i6.PageRouteInfo<void> {
  const MoviesGridRoute() : super(name, path: 'movies-grid');

  static const String name = 'MoviesGridRoute';
}

/// generated route for [_i5.MoviesSearchPage]
class MoviesSearchRoute extends _i6.PageRouteInfo<void> {
  const MoviesSearchRoute() : super(name, path: 'movies-search');

  static const String name = 'MoviesSearchRoute';
}
