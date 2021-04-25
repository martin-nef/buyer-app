import 'package:bloc/bloc.dart';

class Counter extends Cubit<int> {
  int _counter = 0;
  Counter() : super(0);
  void increment() => emit(_counter++);
  void decrement() => emit(_counter--);
}
