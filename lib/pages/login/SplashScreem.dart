import 'package:aspsapp/pages/login/LoginPages.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

class SplashScreem extends StatelessWidget {
  const SplashScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashView(
        duration: Duration(milliseconds: 2000),
        logo: Image(image: AssetImage('img/logo.png')),
        backgroundColor: Colors.white,
        done: Done(LoginPages()),
      ),
    );
  }
}
