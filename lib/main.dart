import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/core/utils/app_router.dart';
import 'package:newsapp/features/home/presentation/views/home_view.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const BooklyApp(), // Wrap your app
      ),
    );

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Bookly App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kyprimarycolor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
