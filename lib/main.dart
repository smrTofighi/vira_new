import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/pages/register_into_screen.dart';
import 'package:vira_app/pages/splash_screen.dart';

void main() {
SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));

  runApp(const ViraApp());
}

class ViraApp extends StatelessWidget {
  const ViraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi, Iran
      ],
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(width: 2)
            ),
            filled: true,
            fillColor: Colors.white
            
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return textTheme.headline3;
                  } else {
                    return textTheme.bodyText2;
                  }
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return SolidColors.btnOnPressed;
                  } else {
                    return SolidColors.themeColor;
                  }
                },
              ),
            ),
          ),
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
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: SolidColors.hintText,
          ),
          subtitle2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: SolidColors.mostTextColor,
          ),
        ),
      ),
      home: const RegisterIntoScreen(),
    );
  }
}
