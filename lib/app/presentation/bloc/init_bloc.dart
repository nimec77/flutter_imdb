import 'package:bloc/bloc.dart';
import 'package:flutter_imdb/app/data/providers/sqlite_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'init_event.dart';

part 'init_state.dart';

part 'init_bloc.freezed.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc(this.sqliteProvider) : super(const InitState.notInitialized()) {
    on<InitEventStarted>(_mapInitEventStartedToState);
  }

  final SqliteProvider sqliteProvider;

  Future<void> _mapInitEventStartedToState(InitEventStarted event, Emitter<InitState> emit) async {
    emit(const InitState.inProgress());
    final result = await sqliteProvider.init();
    result.fold(
      (error) => emit(InitState.failure(error)),
      (result) => result ? emit(const InitState.success()) : emit(InitState.failure(AssertionError('Init Error'))),
    );
  }
}
