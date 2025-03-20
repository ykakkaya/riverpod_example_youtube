import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(5);

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}

final counterStateNotifierProvider =
    StateNotifierProvider<CounterStateNotifier, int>(
      (ref) => CounterStateNotifier(),
    );
