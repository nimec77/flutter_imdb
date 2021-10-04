import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/data/app_database.dart';
import 'package:flutter_imdb/app/data/providers/sqlite_provider.dart';
import 'package:flutter_imdb/app/presentation/routes/route.gr.dart';
import 'package:flutter_imdb/movies/presentation/blocs/movies_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  late final AppDatabase _appDatabase;

  @override
  void initState() {
    _appDatabase = AppDatabase.connect(SqliteProvider().databaseConnection);
    super.initState();
  }

  @override
  void dispose() {
    _appDatabase.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoviesBloc>(
      create: (context) => MoviesBloc(_appDatabase.movieTitleDao),
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) => AppBar(
          title: const Text('Imdb'),
          centerTitle: true,
          leading: const AutoBackButton(),
        ),
        routes: const [
          MoviesListRouter(),
          MoviesGridRouter(),
          MoviesSearchRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            margin: const EdgeInsets.all(20),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                selectedColor: Colors.purple,
                icon: const Icon(Icons.list, size: 30),
                title: const Text('List'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.pink,
                icon: const Icon(Icons.grid_4x4, size: 30),
                title: const Text('Grid'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.teal,
                icon: const Icon(Icons.search, size: 30),
                title: const Text('Search'),
              ),
            ],
          );
        },
      ),
    );
  }
}
