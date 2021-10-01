// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/app_page.dart' as _i1;
import '../pages/init_page.dart' as _i2;
import 'init_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.initGuard})
      : super(navigatorKey);

  final _i5.InitGuard initGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      return _i3.MaterialPageX<void>(
          routeData: routeData, child: const _i1.AppPage());
    },
    InitRoute.name: (routeData) {
      final args = routeData.argsAs<InitRouteArgs>();
      return _i3.MaterialPageX<bool>(
          routeData: routeData,
          child: _i2.InitPage(key: args.key, onResult: args.onResult));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(AppRoute.name, path: '/', guards: [initGuard]),
        _i3.RouteConfig(InitRoute.name, path: 'init')
      ];
}

/// generated route for [_i1.AppPage]
class AppRoute extends _i3.PageRouteInfo<void> {
  const AppRoute() : super(name, path: '/');

  static const String name = 'AppRoute';
}

/// generated route for [_i2.InitPage]
class InitRoute extends _i3.PageRouteInfo<InitRouteArgs> {
  InitRoute({_i4.Key? key, required void Function(bool) onResult})
      : super(name,
            path: 'init', args: InitRouteArgs(key: key, onResult: onResult));

  static const String name = 'InitRoute';
}

class InitRouteArgs {
  const InitRouteArgs({this.key, required this.onResult});

  final _i4.Key? key;

  final void Function(bool) onResult;
}
