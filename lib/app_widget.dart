import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/barcode/barcode_scanner_page.dart';
import 'modules/homepage/home_page.dart';
import 'modules/splash/splash_page.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/appcolors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode": (context) => BarcodeScannerPage(),
      },
    );
  }
}
