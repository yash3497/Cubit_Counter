import 'dart:async';

import 'package:cubit_counter_app/home/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounter extends Cubit<CounterState> {
  CubitCounter() : super(CounterState());

  void increment() {
    final count = state.count + 1;
    final updateState = CounterState(count: count);
    emit(updateState);
  }

  void autoIncrement() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      increment();
    });
  }
}
