import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/pages/get_started_page.dart';
import 'ui/pages/main_page.dart';
import 'ui/pages/sign_up_page.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/bonus_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}