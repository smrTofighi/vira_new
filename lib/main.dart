import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vira_app/splash_screen.dart';

void main(){
  runApp(const ViraApp());
}

class ViraApp extends StatelessWidget {
  const ViraApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('fa', 'IR'), // English, no country code
  ],
      home: SplashScreen(),
    );
  }
}