import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/data/providers/sqlite_provider.dart';
import 'package:flutter_imdb/app/presentation/bloc/init_bloc.dart';

typedef OnResult = void Function(bool result);

class InitPage extends StatefulWidget {
  const InitPage({Key? key, required this.onResult}) : super(key: key);

  final OnResult onResult;

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  late final InitBloc _initBloc;

  @override
  void initState() {
    _initBloc = InitBloc(SqliteProvider());
    _initBloc.add(const InitEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    _initBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<InitBloc, InitState>(
        bloc: _initBloc,
        builder: (context, state) {
          return state.map(
            notInitialized: (_) => Text('Loading...', style: Theme.of(context).textTheme.headline1),
            inProgress: (_) => Text('Loading...', style: Theme.of(context).textTheme.headline1),
            success: (_) {
              widget.onResult(true);
              return Text('Success!', style: Theme.of(context).textTheme.headline1);
            },
            failure: (state) => Text(
              state.error.toString(),
              style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
