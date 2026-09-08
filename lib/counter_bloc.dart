import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_counter/counter_event.dart';
import 'package:simple_counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });
  }
}