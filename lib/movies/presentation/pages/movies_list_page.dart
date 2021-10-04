import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/movies/domain/entities/movie_title.dart';
import 'package:flutter_imdb/movies/presentation/blocs/movies_bloc.dart';
import 'package:flutter_imdb/movies/presentation/widgets/failure_widget.dart';
import 'package:flutter_imdb/movies/presentation/widgets/in_progress_widget.dart';
import 'package:flutter_imdb/movies/presentation/widgets/init_widget.dart';

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
        return state.maybeWhen(
          init: InitWidget.new,
          inProgress: InProgressWidget.new,
          listSuccess: (moviesTitles) => _success(context, moviesTitles),
          failure: (error) => FailureWidget(error: error),
          orElse: () => FailureWidget(error: AssertionError('Error state')),
        );
      },
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
}
