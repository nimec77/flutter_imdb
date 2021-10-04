import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/data/app_database.dart';
import 'package:flutter_imdb/movies/presentation/blocs/movies_bloc.dart';

class MoviesListPage extends StatefulWidget {
  const MoviesListPage({Key? key}) : super(key: key);

  @override
  State<MoviesListPage> createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
  @override
  void initState() {
    context.read<MoviesBloc>().add(const MoviesEvent.listStarted());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        return state.maybeMap(
          init: (_) => _init(context),
          inProgress: (_) => _inProgress(),
          listSuccess: (state) => _success(context, state.moviesTitles),
          failure: (state) => _failure(context, state.error),
          orElse: () => _failure(context, AssertionError('Error state')),
        );
      },
    );
  }

  Widget _init(BuildContext context) {
    return Center(
      child: Text('Init', style: Theme.of(context).textTheme.headline1),
    );
  }

  Widget _inProgress() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _success(BuildContext context, List<MovieTitle> moviesTitles) {
    return ListView.builder(
      itemCount: moviesTitles.length,
      itemBuilder: (context, index) {
        final movieTitle = moviesTitles[index];
        return ListTile(
          leading: Text(movieTitle.titleId),
          title: Text(movieTitle.primaryTitle, textAlign: TextAlign.center),
          subtitle: Text(movieTitle.originalTitle, textAlign: TextAlign.center),
          trailing: Text(movieTitle.genres, textAlign: TextAlign.right),
        );
      },
    );
  }

  Widget _failure(BuildContext context, Error error) {
    return Center(
      child: Text(error.toString(), style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.red)),
    );
  }
}
