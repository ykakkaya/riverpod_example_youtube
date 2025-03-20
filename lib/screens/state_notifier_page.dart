import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/state_notifier_provider.dart';

class StateNotifierPage extends ConsumerWidget {
  const StateNotifierPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterStateNotifier = ref.watch(counterStateNotifierProvider);
    final counterMethods = ref.read(counterStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('State Notifier Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counterStateNotifier.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterMethods.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counterMethods.reset();
            },
            child: Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: () {
              counterMethods.decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
