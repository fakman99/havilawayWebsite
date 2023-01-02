import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:havilaway/firebase_options.dart';
import 'package:havilaway/pages/Homepage.dart';
import 'package:havilaway/pages/Moyens.dart';
import 'package:havilaway/pages/Who.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:havilaway/pages/landing.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Extensions/RouteObserver.dart';
import 'Extensions/routes.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
);
  HttpOverrides.global = PostHttpOverrides();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(bodyText2:
                     GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 255, 255),fontSize: 18)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 255, 102, 102)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 3840,
          minWidth: 360,
          defaultScale: true,
          breakpoints: [
           ResponsiveBreakpoint.resize(360, name: MOBILE, scaleFactor: 0.8),
          ResponsiveBreakpoint.resize(375, name: MOBILE, scaleFactor: 0.85),
            ResponsiveBreakpoint.resize(390, name: MOBILE, scaleFactor: 0.9),
            ResponsiveBreakpoint.resize(403, name: MOBILE, scaleFactor: 0.6),
            ResponsiveBreakpoint.resize(412, name: MOBILE, scaleFactor: 0.8),
            ResponsiveBreakpoint.resize(414, name: MOBILE, scaleFactor: 0.9),
            ResponsiveBreakpoint.resize(430, name: TABLET, scaleFactor: 0.7),
            ResponsiveBreakpoint.resize(768, name: TABLET, scaleFactor: 1),
            ResponsiveBreakpoint.resize(820, name: TABLET, scaleFactor: 0.8),
            ResponsiveBreakpoint.autoScale(768,
                name: DESKTOP, scaleFactor: 0.6),
            ResponsiveBreakpoint.autoScale(1280,
                name: DESKTOP, scaleFactor: 0.8),
            ResponsiveBreakpoint.autoScale(1920,
                name: DESKTOP, scaleFactor: 0.8),
            ResponsiveBreakpoint.autoScale(2560, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(3840, name: "4k", scaleFactor: 0.8),
          ],
          background: Container(color: Colors.white)),
      navigatorObservers: [MyRouteObserver()],
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.landing:
              return Landing();
            case Routes.home:
              return HomeScreen();
            case Routes.moyens:
              return MoyenScreens();
            case Routes.about:
              return About();
            default:
              return SizedBox.shrink();
          }
        });
      },
    );
  }
}

class PostHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
