import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/services/user_service.dart';

final userFutureProvider = FutureProvider((ref) async {
  return await UserService().fetchUsers();
});
