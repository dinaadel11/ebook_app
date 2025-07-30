import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';

import 'widgets/splashviewbody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kyprimarycolor,
      body: SplashViewBody(),
    );
  }
}
