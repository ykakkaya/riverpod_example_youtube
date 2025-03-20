import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStreamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(Duration(seconds: 2), (count) => count);
});
