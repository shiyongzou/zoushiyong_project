import 'package:go_router/go_router.dart';
import 'package:zsy_cli/view/home.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
