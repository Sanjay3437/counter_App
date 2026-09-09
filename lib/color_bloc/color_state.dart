import 'package:flutter/material.dart';


abstract class ColorState {
  Color color = Colors.purple;
  ColorState({required this.color});
}

class ColorInitializeState extends ColorState {
  ColorInitializeState() : super(color: Colors.purple);
}

class ColorIncreamentState extends ColorState {
  ColorIncreamentState(Color increasedColor) : super(color: Colors.green);
}

class ColorDecreamentState extends ColorState {
  ColorDecreamentState(Color decreasedColor) : super(color: Colors.red);
}
