import 'package:flutter_riverpod/flutter_riverpod.dart';

final providerFamily = Provider.family<String, int>((ref, value) {
  return 'Hello, ${value * 6}';
});
