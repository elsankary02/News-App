import 'package:go_router/go_router.dart';
import 'package:news_app/features/presentation/home/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
