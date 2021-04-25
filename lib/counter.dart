import 'dart:async';

import 'package:bloc/bloc.dart';

class Counter extends Cubit<int> {
  int _counter;
  Counter() : super(0) {
    _counter = 0;
  }
  void increment() => emit(_counter++);
  void decrement() => emit(_counter--);
}
