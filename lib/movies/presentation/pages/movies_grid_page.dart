import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/movies/domain/ports/movie_title_iterable.dart';
import 'package:flutter_imdb/movies/presentation/blocs/movies_bloc.dart';
import 'package:flutter_imdb/movies/presentation/widgets/failure_widget.dart';
import 'package:flutter_imdb/movies/presentation/widgets/in_progress_widget.dart';
import 'package:flutter_imdb/movies/presentation/widgets/init_widget.dart';

class MoviesGridPage extends StatefulWidget {
  const MoviesGridPage({Key? key}) : super(key: key);

  @override
  State<MoviesGridPage> createState() => _MoviesGridPageState();
}

class _MoviesGridPageState extends State<MoviesGridPage> {
  @override
  void initState() {
    context.read<MoviesBloc>().add(const MoviesEvent.iterableStarted());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        return state.maybeWhen(
          init: InitWidget.new,
          inProgress: InProgressWidget.new,
          iterableSuccess: (moviesTitles) => _success(context, moviesTitles),
          failure: (error) => FailureWidget(error: error),
          orElse: () => FailureWidget(error: AssertionError('Error state')),
        );
      },
    );
  }

  Widget _success(BuildContext context, MovieTitleIterable moviesTitles) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return moviesTitles[index].fold(
          (error) => FailureWidget(error: error),
          (movieTitle) =>  ListTile(
            leading: Text(movieTitle.titleId),
            title: Text(movieTitle.primaryTitle, textAlign: TextAlign.center),
            subtitle: Text(movieTitle.originalTitle, textAlign: TextAlign.center),
            trailing: Text(movieTitle.genres, textAlign: TextAlign.right),
          ),
        );
      },
    );
  }
}
