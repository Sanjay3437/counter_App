import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_counter/color_bloc/color_event.dart';
import 'package:simple_counter/color_bloc/color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitializeState()) {
    on<ColorIncrementEvent>((event, emit) {
      emit(ColorIncreamentState(Colors.green));
    });

    on<ColorDecrementEvent>((event, emit) {
      emit(ColorDecreamentState(Colors.red));
    });
  }
}