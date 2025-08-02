import 'package:go_router/go_router.dart';
import 'package:newsapp/features/home/presentation/views/book_details_view.dart';
import 'package:newsapp/features/home/presentation/views/home_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookdetailsview',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
