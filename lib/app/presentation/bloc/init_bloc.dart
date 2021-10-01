
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'init_event.dart';
part 'init_state.dart';
part 'init_bloc.freezed.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc() : super(const InitState.notInitialized()) {
    on<InitEventStarted>(_mapInitEventStartedToState);
  }

  void _mapInitEventStartedToState(InitEventStarted event, Emitter<InitState> emit) {}
}
