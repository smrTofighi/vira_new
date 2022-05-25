import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/pages/splash_screen.dart';

void main() {
  runApp(const ViraApp());
}

class ViraApp extends StatelessWidget {
  const ViraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // English, no country code
      ],
      theme: ThemeData(
        fontFamily: 'Samim',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Fanavari',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: SolidColors.mostTextColor,
          ),
          headline2: TextStyle(
            fontSize: 18,
            fontFamily: 'Fanavari',
            fontWeight: FontWeight.bold,
            color: SolidColors.mostTextColor,
          ),
          headline3: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: SolidColors.mostTextColor,
          ),
          labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: SolidColors.themeColor,
          ),
          bodyText1: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: SolidColors.mostTextColor,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: SolidColors.mostTextColor,
          ),
          subtitle1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
