import 'package:go_router/go_router.dart';
import 'package:suramerica/presentation/screens/base_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BaseScreen(),
    ),
  ],
);
