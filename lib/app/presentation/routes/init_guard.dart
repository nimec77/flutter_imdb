import 'package:auto_route/auto_route.dart';
import 'package:flutter_imdb/app/presentation/routes/route.gr.dart';

class InitGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push<bool>(InitRoute(onResult: (result) => resolver.next(result)));
  }
}
