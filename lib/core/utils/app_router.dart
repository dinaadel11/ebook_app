import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/core/utils/service_loacator.dart';
import 'package:newsapp/features/home/data/models/book_model/book_model.dart';
import 'package:newsapp/features/home/data/repos/home_repo_implemntation.dart';
import 'package:newsapp/features/home/presentation/manager/similer_books_cubit/similerbooks_cubit.dart';
import 'package:newsapp/features/home/presentation/views/book_details_view.dart';
import 'package:newsapp/features/home/presentation/views/home_view.dart';
import 'package:newsapp/features/search/presentation/views/search_view.dart';

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
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilerbooksCubit(getIt.get<HomeRepoImplemntation>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
