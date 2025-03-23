import 'package:go_router/go_router.dart';
import 'package:riverpod_example/screens/autodispose/counter_autodispose_page.dart';
import 'package:riverpod_example/screens/autodispose/index_page.dart';
import 'package:riverpod_example/screens/team_search.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => IndexPage()),
    GoRoute(
      path: '/counter',
      builder: (context, state) => CounterDisposePage(),
    ),
    GoRoute(path: '/team_search', builder: (context, state) => TeamSearhPage()),
  ],
);
