import 'dart:async';
import 'dart:math';
import 'package:auto_animated/auto_animated.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:havilaway/Extensions/hover_extensions.dart';
import 'package:havilaway/Widgets/bodymob.dart';
import 'package:havilaway/Widgets/caroussel.dart';
import 'package:havilaway/Widgets/carousselmobile.dart';
import 'package:havilaway/Widgets/footer.dart';
import 'package:havilaway/Widgets/footermobile.dart';
import 'package:havilaway/Widgets/locationmob.dart';
import 'package:havilaway/Widgets/locations.dart';
import 'package:havilaway/Widgets/menu.dart';
import 'package:havilaway/pages/Moyens.dart';
import 'package:fluent_appbar/fluent_appbar.dart';
import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:havilaway/pages/landing.dart';
import 'package:hovering/hovering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
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
import '../Widgets/menu_item.dart';
import '../Widgets/youtubemobile.dart';
import 'Who.dart';

class HomeScreen extends StatefulWidget {
  static const String route = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();
    var size = MediaQuery.of(context).size;
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 730) {
      return Scaffold(
          resizeToAvoidBottomInset: false, // set it to false

          backgroundColor: Color(0xff1E2036),
          drawer: Drawer(
            backgroundColor: Color(0xff1E2036),
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
            backgroundColor: Color(0xff1E2036),
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      
                      image: AssetImage("assets/la-bombetta.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  // it will take full width

                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // It will cover 1/3 of free spaces
                          BodyMob()
                          // it will cover 2/3 of free spaces
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 224, 224, 224)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22, top: 44, bottom: 44),
                    child: Center(
                      child: Container(
                        width: size.width / 1.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Container(
                              color: Color(0xff1E2036),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                      "assets/logo3.svg",
                                                      width: 175,
                                                      height: 175,
                                                      fit: BoxFit.cover),
                                                ),
                                                Text("Résultats en express",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 25,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                    )),
                                                Container(
                                                  width: size.width / 1.5,
                                                  child: Text(
                                                      "Nous vous offrons deux types de services. Envoi des prélèvements le jour du test ou envoi régulier (2 fois par semaine).",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                      )),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                      "assets/logo4.svg",
                                                      width: 175,
                                                      height: 175,
                                                      fit: BoxFit.cover),
                                                ),
                                                Text("Haute précision",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 25,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                    )),
                                                Container(
                                                  width: size.width / 1.5,
                                                  child: Text(
                                                      "Qualité, rapidité, disponibilité et support médical.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                      )),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                      "assets/logo.svg",
                                                      width: 175,
                                                      height: 175,
                                                      fit: BoxFit.cover),
                                                ),
                                                Text(
                                                    "Résultats par voie électronique",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 25,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                    )),
                                                Container(
                                                  width: size.width / 1.5,
                                                  child: Text(
                                                      "La rapidité de nos services passe par les voies électroniques.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                      )),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                      "assets/logo2.svg",
                                                      width: 175,
                                                      height: 175,
                                                      fit: BoxFit.cover),
                                                ),
                                                Text("Circuit",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 25,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                    )),
                                                Container(
                                                  width: size.width / 1.5,
                                                  child: Text(
                                                      "HAVILA WAY se veut être la relève et l’expansion de l’activité entreprise par Madame TSHABU en ayant une étroite collaboration avec elle.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12, bottom: 48),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.black), //Color.fromARGB(255, 9, 13, 53)
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 24),
                          child: Text("Qui sommes-nous?".toUpperCase(),
                              style: GoogleFonts.poppins(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Container(
                                    child: Text(
                                        "Basée en Angleterre , la société HAVILA WAY a pour mission de mener à bien la gestion administrative et financière afin d’emmener l’activité médical à son momentum mais aussi envisager les voix et moyens pour exporter l’activité dans d’autres pays d’Afrique.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        )),
                                  ),
                                ),
                                Text(""),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0, bottom: 40),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset("assets/images/p6.jpg",
                                        width: screenSize.width / 1.2,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Nos laboratoires".toUpperCase(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 26,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12, bottom: 24.0),
                                      child: Container(
                                        child: Text(
                                            "Toujours avec le même soin, et avec le souci de rester proche des prescripteurs et des patients. Qualité, rapidité, disponibilité et support médical forment le carré gagnant de nos laboratoires.",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        // it will cover 2/3 of free spaces
                      ],
                    ),
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
                      LocationMob(),
                      Footer(),

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
      // This size provide us total height and width  of our screen
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
                                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 15),),
                                        backgroundColor:  MaterialStateProperty.all(Color.fromARGB(255, 92, 24, 8)),
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
                                    });
                                                              Navigator.of(context).pushNamed(Landing.route);

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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/la-bombetta.jpg"),
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

                          Body(),

                          // it will cover 2/3 of free spaces
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 224, 224, 224)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22, top: 44, bottom: 44),
                    child: Center(
                      child: Container(
                        width: size.width / 1.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Container(
                              color: Color(0xff1E2036),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                  "assets/logo3.svg",
                                                  width: 175,
                                                  height: 175,
                                                  fit: BoxFit.cover),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                  "assets/logo4.svg",
                                                  width: 175,
                                                  height: 175,
                                                  fit: BoxFit.cover),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                  "assets/logo.svg",
                                                  width: 175,
                                                  height: 175,
                                                  fit: BoxFit.cover),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                  "assets/logo2.svg",
                                                  width: 175,
                                                  height: 175,
                                                  fit: BoxFit.cover),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12, bottom: 48),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Résultats en express",
                                                textAlign: TextAlign.justify,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 25,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                )),
                                            Container(
                                              width: size.width / 5,
                                              child: Text(
                                                  "Nous vous offrons deux types de services. Envoi des prélèvements le jour du test ou envoi régulier (2 fois par semaine).",
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Haute précision",
                                                textAlign: TextAlign.justify,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 25,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                )),
                                            Container(
                                              width: size.width / 5,
                                              child: Text(
                                                  "Qualité, rapidité, disponibilité et support médical.",
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Résultats par voie électronique",
                                                textAlign: TextAlign.justify,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 25,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                )),
                                            Container(
                                              width: size.width / 5,
                                              child: Text(
                                                  "La rapidité de nos services passe par les voies électroniques.",
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Circuit",
                                                textAlign: TextAlign.justify,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 25,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                )),
                                            Container(
                                              width: size.width / 5,
                                              child: Text(
                                                  "HAVILA WAY se veut être la relève et l’expansion de l’activité entreprise par Madame TSHABU en ayant une étroite collaboration avec elle.",
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  )),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.black), //Color.fromARGB(255, 9, 13, 53)
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 24),
                          child: Text("Qui sommes-nous?".toUpperCase(),
                              style: GoogleFonts.poppins(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: size.width / 3,
                                  child: Text(
                                      "Basée en Angleterre , la société HAVILA WAY a pour mission de mener à bien la gestion administrative et financière afin d’emmener l’activité médical à son momentum mais aussi envisager les voix et moyens pour exporter l’activité dans d’autres pays d’Afrique.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      )),
                                ),
                                Text(""),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Nos laboratoires".toUpperCase(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 26,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    Text(""),
                                    Container(
                                      width: size.width / 3,
                                      child: Text(
                                          "Toujours avec le même soin, et avec le souci de rester proche des prescripteurs et des patients. Qualité, rapidité, disponibilité et support médical forment le carré gagnant de nos laboratoires.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 22,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset("assets/images/p6.jpg",
                                    width: screenSize.width / 2.5,
                                    height: screenSize.height / 2.5,
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),

                        // it will cover 2/3 of free spaces
                      ],
                    ),
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
