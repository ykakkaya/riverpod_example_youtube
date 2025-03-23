import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateDisposeProvider = StateProvider.autoDispose<int>((ref) {
  //ref.keepAlive();
  final cache = ref.keepAlive();
  final timer = Timer(Duration(seconds: 10), () => cache.close());
  ref.onDispose(() => timer.cancel());
  return 0;
});
