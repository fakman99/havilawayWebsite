import 'dart:async';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:havilaway/Extensions/hover_extensions.dart';
import 'package:havilaway/Widgets/footer.dart';
import 'package:havilaway/Widgets/locationmob.dart';
import 'package:havilaway/Widgets/locations.dart';
import 'package:havilaway/Widgets/menu.dart';
import 'package:fluent_appbar/fluent_appbar.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:havilaway/Widgets/menumobile.dart';
import 'package:havilaway/pages/landing.dart';
import 'package:hovering/hovering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'dart:html' as html;
import 'package:responsive_framework/responsive_framework.dart';
import 'package:share_everywhere/share_everywhere.dart';

import 'package:animated_appbar/animated_appbar.dart';
import 'package:vertical_scrollable_pageview/vertical_scrollable_pageview.dart';

import '../Extensions/constant.dart';
import '../Widgets/app_bar.dart';
import '../Widgets/body.dart';
import '../Widgets/button2.dart';
import '../Widgets/def_button.dart';
import '../Widgets/footermobile.dart';
import '../Widgets/menu_item.dart';
import '../Widgets/youtubemobile.dart';
import 'Homepage.dart';
import 'Moyens.dart';
import 'dart:js' as js;

class About extends StatefulWidget {
  static const String route = 'about';

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final _controller = ScrollController();
    Size size = MediaQuery.of(context).size;

    // This size provide us total height and width  of our screen

    if (screenSize.width < 730) {
      return Scaffold(
          backgroundColor: blue,
          drawer: Drawer(
            backgroundColor: blue,
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/logo_emsf.jpg",
                          ),
                          fit: BoxFit.contain)),
                  child: Container(),
                ),
                ListTile(
                  title: Text(
                    'Accueil',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(HomeScreen.route);
                  },
                ),
                ListTile(
                  title: Text(
                    'Qui sommes-nous?',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(About.route);
                  },
                ),
                ListTile(
                  textColor: Colors.white,
                  title: Text('Nos Moyens',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  onTap: () {
                    Navigator.of(context).pushNamed(MoyenScreens.route);
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: blue,
            actions: [
              Image.asset(
                "assets/logo_emsf.jpg",
              ),
            ],
          ),
          body: SafeArea(
            child: ListView(
              children: [
                Container(
                  height: size.height / 1.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/4.JPEG"), fit: BoxFit.cover),
                  ),

                  // it will cover 2/3 of free spaces

                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // It will cover 1/3 of free spaces
                          Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(99, 0, 0, 0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 75.0, left: 0, top: 24),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: FittedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24.0),
                                            child: Text("QUI".toUpperCase(),
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 42,
                                                    color: Colors.white)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24.0),
                                            child: Text(
                                                "SOMMES-NOUS ?".toUpperCase(),
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 42,
                                                    color: Colors.white)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // it will cover 2/3 of free spaces
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(color: Color(0xff1E2036)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // It will cover 1/3 of free spaces
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                      "Havilaway, c'est qui?\nC'est quoi?",
                                      style: GoogleFonts.poppins(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0.0),
                                  child: Container(
                                    child: Text(
                                        "Bas??e en Angleterre , la soci??t?? HAVILA WAY a pour mission de mener ?? bien la gestion administrative et financi??re afin d???emmener l???activit?? m??dical ?? son momentum mais aussi envisager les voix et moyens pour exporter l???activit?? dans d???autres pays d???Afrique . HAVILA WAY se veut ??tre la rel??ve et l???expansion de l???activit?? entreprise par Madame TSHABU en ayant une etroite collaboration avec elle.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset("assets/logo_emsf.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: size.width,
                        child: MenuMob(),
                        color: Colors.black,
                      ),
                      // it will cover 2/3 of free spaces
                    ],
                  ),
                ),
                Container(
                  // it will take full width
                  decoration: BoxDecoration(color: blue),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // It will cover 1/3 of free spaces
                      LocationMob(),
                      Footer()

                      // it will cover 2/3 of free spaces
                    ],
                  ),
                ),
              ],
            ),
          ));
    } else {
      final List<String> items = [
        'Finances',
        'SOON',
        'SOON',
        'SOON',
      ];
      String? selectedValue;
      Size size = MediaQuery.of(context).size;
      final _controllerr = ScrollController();
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: Material(
              elevation: 5,
              shadowColor: Colors.black,
              child: Container(
                color: Color(0xff1E2036),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(HomeScreen.route);
                        },
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(HomeScreen.route);
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/work2.jpg",
                                    width: 80,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(width: screenSize.width / 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(About.route);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text("Qui sommes-nous?".toUpperCase(),
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)
                                                .withOpacity(0.8))),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(MoyenScreens.route);
                              },
                              child: MenuItems(
                                title: "Nos moyens",
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Timer(
                                    Duration(milliseconds: 500),
                                    () => _controller.jumpTo(
                                        _controller.position.maxScrollExtent),
                                  );
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 15),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color.fromARGB(255, 92, 24, 8)),
                                      ),
                                      onPressed: () {
                                        Timer(
                                          Duration(milliseconds: 500),
                                          () => _controller.jumpTo(_controller
                                              .position.maxScrollExtent),
                                        );
                                      },
                                      child: Text("Contact".toUpperCase(),
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white)),
                                    ))),
                            Padding(padding: EdgeInsets.all(8)),
                            GestureDetector(
                              onTap: () {
                                Timer(
                                  Duration(milliseconds: 500),
                                  () => _controller.jumpTo(
                                      _controller.position.maxScrollExtent),
                                );
                              },
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  buttonPadding: EdgeInsets.only(left: 24),
                                  buttonDecoration: BoxDecoration(
                                    color: Color.fromARGB(255, 8, 81, 150),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hint: Text('Medical'.toUpperCase(),
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 255, 255, 255)
                                                  .withOpacity(0.8))),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value as String;
                                      Navigator.of(context)
                                          .pushNamed(Landing.route);
                                    });
                                  },
                                  buttonHeight: 40,
                                  buttonWidth: 140,
                                  itemHeight: 40,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: ListView(
              controller: _controller,
              children: [
                Container(
                  height: (size.height / 4) * 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/4.JPEG"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // it will take full width
                  width: size.width,

                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // It will cover 1/3 of free spaces

                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(bottom: 130)),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  color: Color.fromARGB(171, 0, 0, 0),
                                  child: FittedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:24,bottom: 24,
                                              left: 24.0, right: 24),
                                          child: SizedBox(
                                            width: size.width / 1.2,
                                            child: DefaultTextStyle(
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 50,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                              child: AnimatedTextKit(
                                                isRepeatingAnimation: false,
                                                repeatForever: false,
                                                animatedTexts: [
                                                  TypewriterAnimatedText(
                                                      "QUI SOMMES-NOUS ?")
                                                ],
                                                onTap: () {
                                                  print("Tap Event");
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )

                          // it will cover 2/3 of free spaces
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(color: Color(0xff1E2036)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // It will cover 1/3 of free spaces
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24.0, left: 24),
                                  child: Text("HAVILA WAY",
                                      style: GoogleFonts.poppins(
                                          fontSize: 35,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 36),
                                  child: Text(
                                      "  Faisons Connaissance avec Havilaway",
                                      style: GoogleFonts.poppins(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset("assets/logo_emsf.jpg",
                                        width: 350,
                                        height: 350,
                                        fit: BoxFit.cover),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                            "Havilaway, c'est qui? C'est quoi?",
                                            style: GoogleFonts.poppins(
                                                fontSize: 26,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        width: size.width / 2,
                                        child: Text(
                                            "Bas??e en Angleterre , la soci??t?? HAVILA WAY a pour mission de mener ?? bien la gestion administrative et financi??re afin d???emmener l???activit?? m??dical ?? son momentum mais aussi envisager les voix et moyens pour exporter l???activit?? dans d???autres pays d???Afrique . HAVILA WAY se veut ??tre la rel??ve et l???expansion de l???activit?? entreprise par Madame TSHABU en ayant une etroite collaboration avec elle.",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width,
                        child: Menu(),
                        color: Colors.black,
                      ),

                      // it will cover 2/3 of free spaces
                    ],
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(color: Color(0xff1E2036)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // It will cover 1/3 of free spaces
                      Location(),
                      Footer(),

                      // it will cover 2/3 of free spaces
                    ],
                  ),
                ),
              ],
            ),
          ));
    }
  }
}
