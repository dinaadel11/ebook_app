import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/core/utils/app_router.dart';
import 'package:newsapp/core/utils/service_loacator.dart';
import 'package:newsapp/features/home/data/repos/home_repo_implemntation.dart';
import 'package:newsapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:newsapp/features/home/presentation/manager/news_books_cubit/news_books_cubit.dart';

void main() {
  setup(); // استدعاء الدالة اللي بتسجل الـ dependencies

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const BooklyApp(), // Wrap your app
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplemntation>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsBooksCubit(
            getIt.get<HomeRepoImplemntation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Bookly App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kyprimarycolor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
