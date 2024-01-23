import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(counter: 0));
  void incrementCounter() => emit(CounterState(counter: state.counter + 1));
  void decrementCounter() => emit(CounterState(counter: state.counter - 1));
}
