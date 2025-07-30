import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/constant.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => BoolyApp(), // Wrap your app
      ),
    );

class BoolyApp extends StatelessWidget {
  const BoolyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bookly App',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kyprimarycolor),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
