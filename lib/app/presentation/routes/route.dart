import 'package:auto_route/annotations.dart';
import 'package:flutter_imdb/app/presentation/pages/app_page.dart';
import 'package:flutter_imdb/app/presentation/pages/init_page.dart';
import 'package:flutter_imdb/app/presentation/routes/init_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(
      path: '/',
      page: AppPage,
      guards: [InitGuard]
    ),
    AutoRoute<bool>(
      path: 'init',
      page: InitPage,
    ),
  ],
)
class $AppRouter {}
