import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/pages/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => const MainScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: Assets.logo.vTech,
                height: 80.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const SpinKitThreeBounce(
                color: SolidColors.themeColor,
                size: 32.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
