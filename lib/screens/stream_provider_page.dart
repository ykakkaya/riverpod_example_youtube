import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/stream_provider.dart';

class StreamProviderPage extends ConsumerStatefulWidget {
  const StreamProviderPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StreamProviderPageState();
}

class _StreamProviderPageState extends ConsumerState<StreamProviderPage> {
  @override
  Widget build(BuildContext context) {
    final streamAsync = ref.watch(counterStreamProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Stream Provider Page')),
      body: streamAsync.when(
        data: (data) {
          return Center(
            child: Text(
              'Canlı Sayaç Verisi: $data',
              style: TextStyle(fontSize: 35),
            ),
          );
        },
        error: (error, stackTrace) {
          return Text("Bir Hata Meydana Geldi: $error");
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
