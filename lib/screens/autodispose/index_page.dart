import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_example/providers/theme_change_provider.dart';

class IndexPage extends ConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(themeChangeProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Index Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.push('/counter');
              },
              child: Text('Counter Page'),
            ),

            Switch(
              value: value,
              onChanged:
                  (newValue) =>
                      ref.read(themeChangeProvider.notifier).state = newValue,
            ),
          ],
        ),
      ),
    );
  }
}
