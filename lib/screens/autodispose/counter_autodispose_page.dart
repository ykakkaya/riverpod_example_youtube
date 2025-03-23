import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/state_provider_dispose.dart';

class CounterDisposePage extends ConsumerWidget {
  const CounterDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterDispose = ref.watch(counterStateDisposeProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Counter Dispose Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(counterDispose.toString(), style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterStateDisposeProvider.notifier).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
