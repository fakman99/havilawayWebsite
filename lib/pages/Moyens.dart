import 'dart:async';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:havilaway/Extensions/constant.dart';
import 'package:havilaway/Extensions/hover_extensions.dart';
import 'package:havilaway/Widgets/footer.dart';
import 'package:havilaway/Widgets/locationmob.dart';
import 'package:havilaway/Widgets/locations.dart';
import 'package:havilaway/Widgets/menu.dart';
import 'package:havilaway/pages/Homepage.dart';
import 'package:havilaway/pages/Who.dart';
import 'package:fluent_appbar/fluent_appbar.dart';
import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hovering/hovering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver_grouped_list/sliver_grouped_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'dart:html' as html;
import 'package:responsive_framework/responsive_framework.dart';
import 'package:share_everywhere/share_everywhere.dart';

import 'package:animated_appbar/animated_appbar.dart';
import 'package:vertical_scrollable_pageview/vertical_scrollable_pageview.dart';

import '../Widgets/app_bar.dart';
import '../Widgets/body.dart';
import '../Widgets/button2.dart';
import '../Widgets/def_button.dart';
import '../Widgets/footermobile.dart';
import '../Widgets/menu_item.dart';
import '../Widgets/youtubemobile.dart';
import 'landing.dart';

class MoyenScreens extends StatefulWidget {
  static const String route = 'moyens';

  @override
  State<MoyenScreens> createState() => _MoyenScreensState();
}

class _MoyenScreensState extends State<MoyenScreens> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final _controller = ScrollController();
    Size size = MediaQuery.of(context).size;
    ExpandedTileController ETcontroller = new ExpandedTileController();
    ExpandedTileController ETcontroller2 = new ExpandedTileController();
    ExpandedTileController ETcontroller3 = new ExpandedTileController();
    ExpandedTileController ETcontroller4 = new ExpandedTileController();
    ExpandedTileController ETcontroller5 = new ExpandedTileController();
    ExpandedTileController ETcontroller6 = new ExpandedTileController();
    ExpandedTileController ETcontroller7 = new ExpandedTileController();
    ExpandedTileController ETcontroller8 = new ExpandedTileController();
    ExpandedTileController ETcontroller9 = new ExpandedTileController();
    ExpandedTileController ETcontroller10 = new ExpandedTileController();
    ExpandedTileController ETcontroller11 = new ExpandedTileController();
    ExpandedTileController ETcontroller12 = new ExpandedTileController();
    ExpandedTileController ETcontroller13 = new ExpandedTileController();
    ExpandedTileController ETcontroller14 = new ExpandedTileController();
    ExpandedTileController ETcontroller15 = new ExpandedTileController();
    ExpandedTileController ETcontroller16 = new ExpandedTileController();
    ExpandedTileController ETcontroller17 = new ExpandedTileController();
    ExpandedTileController ETcontroller18 = new ExpandedTileController();
    ExpandedTileController ETcontroller19 = new ExpandedTileController();
    ExpandedTileController ETcontroller20 = new ExpandedTileController();
    ExpandedTileController ETcontroller21 = new ExpandedTileController();
    ExpandedTileController ETcontroller22 = new ExpandedTileController();
    ExpandedTileController ETcontroller23 = new ExpandedTileController();
    ExpandedTileController ETcontroller24 = new ExpandedTileController();
    ExpandedTileController ETcontroller25 = new ExpandedTileController();
    ExpandedTileController ETcontroller26 = new ExpandedTileController();

    const double _kHeight = 150.0;

    if (screenSize.width < 730) {
      return Scaffold(
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
              controller: _controller,
              children: [
                Container(
                  height: (size.height / 4) * 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/1.JPEG"),
                      fit: BoxFit.cover,
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
                          Padding(padding: EdgeInsets.all(140)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(99, 0, 0, 0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 75.0, left: 24, top: 24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Découvrez".toUpperCase(),
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 42,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255))),
                                      Text("NOS MOYENS".toUpperCase(),
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 42,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 44.0, bottom: 44, left: 22, right: 22),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, bottom: 12),
                          child: Text("Transport".toUpperCase(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                      "- La conservation dans les meilleures conditions permet des résultats d’analyses plus précis. L’altération peut avoir de lourdes conséquences.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  child: Text(
                                      "- Une perte peut avoir des conséquences retardant une potentielle thérapie.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  child: Text(
                                    "- La potentielle présence d’agents pathogène consiste en un risque pour les environnements par lesquels ils transitent mais un risque d’exposition pour les collaborateurs de la supply chain",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset("assets/logo_emsf.jpg",
                                  width: 210, height: 210, fit: BoxFit.cover),
                            ),
                          ],
                        )

                        // it will cover 2/3 of free spaces
                      ],
                    ),
                  ),
                ),
                Container(
                  // it will take full width
                  width: size.width,

                  child: Padding(
                    padding: const EdgeInsets.all(16 * 3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // It will cover 1/3 of free spaces
                        Text("Nos moyens".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.8))),
                        Container(
                          child: Text(
                              "Les problèmes d’acheminement n’arrivent que de manière exceptionnelle (période de grèves de compagnie aérienne, mauvais acheminement par les transporteurs…). Si un  problème se pose, Havila Way prend en charge les frais que peut engendrer ce type de problème comme un nouveau prélèvement, un nouvel envoi, etc. Les délais d’envoi de résultats sont de 2 à 3 jours au maximum (dès la prise de vos prélèvements). Les résultats vous sont envoyés directement par email. Les résultats fiables de nos laboratoires basés en Belgique vous permettront d’entreprendre les soins nécessaires pour vos patients. Les résultats sont envoyés directement après analyse au fur et à mesure. Havila Way connaît l’importance d’un délai court dans le traitement médical. Dans l’hypothèse où une nouvelle analyse du prélèvement est nécessaire, les échantillons peuvent être conservés jusqu’à 4 semaines dans le but d’éviter à nouveau les délais de transport.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 48, 48, 48),
                              )),
                        ),

                        Container(
                          child: Text(
                              "Une réglementation stricte entoure le transport à toutes les étapes, de la prise du prélèvement à la réception en laboratoire. En effet, des règlements et/ou recommandations ont été dictés par des groupes internationaux. Ces règlements et recommandations permettent de réduire les risques ou de les maîtriser. Ces indications peuvent porter étiquetage, l’emballage, la documentation à fournir. Pour Havila Way, ces indications ne sont pas un fardeau réglementaire mais bien une nécessité.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 48, 48, 48),
                              )),
                        ),

                        Container(
                          child: Text(
                              "Il est intéressant de souligner que ce type d’indications sont revues de manière systématique tous les deux ans. Et donc prennent également en compte les avancées technologiques. Mais elles prennent également en compte la réalité du terrain. Ainsi une recommandation peut divergé entre deux pays africains pour être proches de la réalité et de certaines potentielles contraintes.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 48, 48, 48),
                              )),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, right: 0, top: 44, bottom: 44),
                            child: Center(
                              child: Container(
                                width: size.width / 1.1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Container(
                                      color: Color(0xff1E2036),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: SvgPicture.asset(
                                                              "assets/logo7.svg",
                                                              width: 175,
                                                              height: 175,
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                        Text("Harmonie",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 25,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255),
                                                            )),
                                                        Container(
                                                          child: Text(
                                                              "Pour un aspect pratique, Havila Way fournit aux centres ses propres équipements. Il est en effet intéressant que la supply chain soit harmonisée pour la rendre la plus efficace. Il s’agit en effet de prélèvements précieux qui doivent être manipulés avec soin mais également avec une certaine rapidité.",
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 16,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: SvgPicture.asset(
                                                              "assets/logo6.svg",
                                                              width: 175,
                                                              height: 175,
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                        Text(
                                                            "Formation & Cohésion",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 25,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255),
                                                            )),
                                                        Container(
                                                          child: Text(
                                                              "Il est possible si vous en faite la demande que vos services soit formés par nos équipes. Une bonne connaissance de nos matériels amènera une cohésion évidente entre vos et nos équipes.",
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 16,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: SvgPicture.asset(
                                                              "assets/logo5.svg",
                                                              width: 175,
                                                              height: 175,
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                      ],
                                                    ),
                                                    Text("Sélection attentive",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 25,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255),
                                                        )),
                                                    Container(
                                                      child: Text(
                                                          "Les collaborateurs pour le transport ont été sélectionnés avec une attention grande attention. La manipulation d’éléments biologiques comprend des risques de notre entreprise à pour véritable ambition de bannir.",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 16,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                          )),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // it will cover 2/3 of free spaces
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(
                      color:
                          Color(0xff1E2036)), //Color.fromARGB(255, 9, 13, 53)
                  child: Padding(
                    padding: const EdgeInsets.all(44.0),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24.0, left: 24, bottom: 24),
                              child: Text("Expéditeur HW".toUpperCase(),
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
                                    Container(
                                      child: Text(
                                          "De nombreux éléments doivent être effectués par l’expéditeur comme l’identification, emballage, le contrôle des températures dans un premier temps.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      child: Text(
                                          "Dans un second temps, une préparation de tous les documents nécessaires à l’envoi.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      child: Text(
                                          "Ensuite, notifier au destinataire le contenu du transport et les modalités du transport. La préparation des lettres de transports aériens et les autres modalités pour le transport sur le territoire belge (transport sécurisé et direct dans les conditions de sécurité nécessaires).",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      child: Text(
                                          "C’est à ces niveaux que Havila Way dévoile toute son expertise. S’il vous est demandé de suivre certaines règles lors de la prise de l’échantillon, Havila Way prend le relais pour toutes les autres étapes à suivre.Et vous laisse au soin de votre activité principale en toute sérénité, la médecine.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24.0, bottom: 12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset("assets/images/p1.jpg",
                                        width: screenSize.width / 1.2,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),

                            // it will cover 2/3 of free spaces
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Nos Transporteurs".toUpperCase(),
                                  style: GoogleFonts.poppins(
                                      fontSize: 26,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text(""),
                              Container(
                                child: Text(
                                    "Nos transporteurs ont eux aussi à leur charges certaines tâches. C’est en gardant ceci en tête et la préciosité de vos échantillons que nous les avons sélectionnés.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                              ),
                              Text(""),
                              Container(
                                child: Text(
                                    "Ils effectuent en autre un trajet approprié, c’est-à-dire le plus court. Les vérifications de documentations et les contrôles exigés en matière de marquage et d’étiquetage.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                              ),
                              Text(""),
                              Container(
                                child: Text(
                                    "En constante collaboration avec ces derniers, Havila Way peut bénéficier de leur expertise pour de nouveaux types d’envois ou de nouvelles règles en application.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text("Nos tests disponibles".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller,
                                      title: Text(
                                        "Hémostase : thrombose",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [trombose()],
                                      ),
                                      onTap: () {
                                        //debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        //debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller2,
                                      title: Text(
                                        "Hémostase : tendance hémorragique",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [tendancextends()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller3,
                                      title: Text(
                                        "Immunologie",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Immu()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller4,
                                      title: Text(
                                        "Ions",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Ions()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller5,
                                      title: Text(
                                        "Protéines",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Proteine()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller6,
                                      title: Text(
                                        "Foie – pancréas",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Foie()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller8,
                                      title: Text(
                                        "Myocarde",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Myocarde()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller9,
                                      title: Text(
                                        "Vitamines - Métabolisme des glucides",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Vitamines()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller10,
                                      title: Text(
                                        "Divers",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Divers()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller11,
                                      title: Text(
                                        "Tests orthomoléculaires",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Tests()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller12,
                                      title: Text("AUTO-anticorps",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                      content: Column(
                                        children: [auto()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller13,
                                      title: Text(
                                        "PSA",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [PSA()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller14,
                                      title: Text(
                                        "Oncologie",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [oncologie()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  child: Column(
                                children: [
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller15,
                                    title: Text(
                                      "Fonction thyroïdienne",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [tyro()],
                                    ),
                                    onTap: () {
                                      //debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      //debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller16,
                                    title: Text(
                                      "Métabolisme osseux",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Meta()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller17,
                                    title: Text(
                                      "Glande surrénale – hypertension",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Glande()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller18,
                                    title: Text(
                                      "Grossesse",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Grossesse()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller19,
                                    title: Text(
                                      "Fonction ovarienne – gonades",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Ovar()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller20,
                                    title: Text(
                                      "Hormones",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Hormone()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller21,
                                    title: Text(
                                      "Médicaments",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Medi()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller22,
                                    title: Text(
                                      "Allergie",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Allergie()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller23,
                                    title: Text(
                                      "Maladie Coeliaque – entéropathie au gluten",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Maladie()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller24,
                                    title: Text(
                                      "Examen de sperme",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Sperme()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller25,
                                    title: Text(
                                        "Sérologie infectieuse bactérienne",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        )),
                                    content: Column(
                                      children: [Sero()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                  ExpandedTile(
                                    theme: const ExpandedTileThemeData(
                                      headerColor: Color(0xff1E2036),
                                      headerRadius: 24.0,
                                      headerPadding: EdgeInsets.all(24.0),
                                      headerSplashColor: Colors.white,
                                      contentBackgroundColor:
                                          Color.fromARGB(255, 92, 99, 134),
                                      contentPadding: EdgeInsets.all(24.0),
                                      contentRadius: 12.0,
                                    ),
                                    controller: ETcontroller26,
                                    title: Text(
                                      "Autres",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    content: Column(
                                      children: [Autres()],
                                    ),
                                    onTap: () {
                                      debugPrint("tapped!!");
                                    },
                                    onLongTap: () {
                                      debugPrint("long tapped!!");
                                    },
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
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
      return Scaffold(
          backgroundColor: Color.fromARGB(252, 247, 247, 247),
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
                                                                                                    Navigator.of(context).pushNamed(Landing.route);

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
                      image: AssetImage("assets/1.JPEG"),
                      fit: BoxFit.cover,
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
                          Padding(padding: EdgeInsets.all(140)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

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
                                                      "NOS MOYENS")
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
                            ],
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 44.0, bottom: 44, left: 22, right: 22),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Text("Transport".toUpperCase(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width / 2,
                                  child: Text(
                                      "- La conservation dans les meilleures conditions permet des résultats d’analyses plus précis. L’altération peut avoir de lourdes conséquences.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  width: size.width / 2,
                                  child: Text(
                                      "- Une perte peut avoir des conséquences retardant une potentielle thérapie.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  width: size.width / 2,
                                  child: Text(
                                    "- La potentielle présence d’agents pathogène consiste en un risque pour les environnements par lesquels ils transitent mais un risque d’exposition pour les collaborateurs de la supply chain",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset("assets/logo_emsf.jpg",
                                  width: 210, height: 210, fit: BoxFit.cover),
                            ),
                          ],
                        )

                        // it will cover 2/3 of free spaces
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 2000,
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage(
                      "assets/logo_emsf.jpg",
                    ),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(16 * 3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // It will cover 1/3 of free spaces
                        Text("Nos moyens".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.8))),
                        Container(
                          width: size.width / 1.2,
                          child: Text(
                              "Les problèmes d’acheminement n’arrivent que de manière exceptionnelle (période de grèves de compagnie aérienne, mauvais acheminement par les transporteurs…). Si un  problème se pose, Havila Way prend en charge les frais que peut engendrer ce type de problème comme un nouveau prélèvement, un nouvel envoi, etc. Les délais d’envoi de résultats sont de 2 à 3 jours au maximum (dès la prise de vos prélèvements). Les résultats vous sont envoyés directement par email. Les résultats fiables de nos laboratoires basés en Belgique vous permettront d’entreprendre les soins nécessaires pour vos patients. Les résultats sont envoyés directement après analyse au fur et à mesure. Havila Way connaît l’importance d’un délai court dans le traitement médical. Dans l’hypothèse où une nouvelle analyse du prélèvement est nécessaire, les échantillons peuvent être conservés jusqu’à 4 semaines dans le but d’éviter à nouveau les délais de transport.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 48, 48, 48),
                              )),
                        ),

                        Container(
                          width: size.width / 1.2,
                          child: Text(
                              "Une réglementation stricte entoure le transport à toutes les étapes, de la prise du prélèvement à la réception en laboratoire. En effet, des règlements et/ou recommandations ont été dictés par des groupes internationaux. Ces règlements et recommandations permettent de réduire les risques ou de les maîtriser. Ces indications peuvent porter étiquetage, l’emballage, la documentation à fournir. Pour Havila Way, ces indications ne sont pas un fardeau réglementaire mais bien une nécessité.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 48, 48, 48),
                              )),
                        ),

                        Container(
                          width: size.width / 1.2,
                          child: Text(
                              "Il est intéressant de souligner que ce type d’indications sont revues de manière systématique tous les deux ans. Et donc prennent également en compte les avancées technologiques. Mais elles prennent également en compte la réalité du terrain. Ainsi une recommandation peut divergé entre deux pays africains pour être proches de la réalité et de certaines potentielles contraintes.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 48, 48, 48),
                              )),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                          "assets/logo7.svg",
                                                          width: 175,
                                                          height: 175,
                                                          fit: BoxFit.cover),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                          "assets/logo6.svg",
                                                          width: 175,
                                                          height: 175,
                                                          fit: BoxFit.cover),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                          "assets/logo5.svg",
                                                          width: 175,
                                                          height: 175,
                                                          fit: BoxFit.cover),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12.0,
                                                right: 12,
                                                bottom: 48),
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
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Harmonie",
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 25,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255),
                                                        )),
                                                    Container(
                                                      width: size.width / 5,
                                                      child: Text(
                                                          "Pour un aspect pratique, Havila Way fournit aux centres ses propres équipements. Il est en effet intéressant que la supply chain soit harmonisée pour la rendre la plus efficace. Il s’agit en effet de prélèvements précieux qui doivent être manipulés avec soin mais également avec une certaine rapidité.",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 18,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
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
                                                    Text("Formation & Cohésion",
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 25,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255),
                                                        )),
                                                    Container(
                                                      width: size.width / 5,
                                                      child: Text(
                                                          "Il est possible si vous en faite la demande que vos services soit formés par nos équipes. Une bonne connaissance de nos matériels amènera une cohésion évidente entre vos et nos équipes.",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 18,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
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
                                                    Text("Sélection attentive",
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 25,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255),
                                                        )),
                                                    Container(
                                                      width: size.width / 5,
                                                      child: Text(
                                                          "Les collaborateurs pour le transport ont été sélectionnés avec une attention grande attention. La manipulation d’éléments biologiques comprend des risques de notre entreprise à pour véritable ambition de bannir.",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 18,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                          )),
                                                    ),
                                                  ],
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
                      ],
                    ),
                  ),
                  // it will cover 2/3 of free spaces
                ),
                Container(
                  // it will take full width
                  width: size.width,
                  decoration: BoxDecoration(
                      color:
                          Color(0xff1E2036)), //Color.fromARGB(255, 9, 13, 53)
                  child: Padding(
                    padding: const EdgeInsets.all(44.0),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24.0, left: 24, bottom: 24),
                              child: Text("Expéditeur HW".toUpperCase(),
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
                                      width: size.width / 1.15,
                                      child: Text(
                                          "De nombreux éléments doivent être effectués par l’expéditeur comme l’identification, emballage, le contrôle des températures dans un premier temps.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      width: size.width / 1.15,
                                      child: Text(
                                          "Dans un second temps, une préparation de tous les documents nécessaires à l’envoi.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      width: size.width / 1.15,
                                      child: Text(
                                          "Ensuite, notifier au destinataire le contenu du transport et les modalités du transport. La préparation des lettres de transports aériens et les autres modalités pour le transport sur le territoire belge (transport sécurisé et direct dans les conditions de sécurité nécessaires).",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      width: size.width / 1.15,
                                      child: Text(
                                          "C’est à ces niveaux que Havila Way dévoile toute son expertise. S’il vous est demandé de suivre certaines règles lors de la prise de l’échantillon, Havila Way prend le relais pour toutes les autres étapes à suivre.",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                    ),
                                    Text(""),
                                    Container(
                                      width: size.width / 1.15,
                                      child: Text(
                                          "Et vous laisse au soin de votre activité principale en toute sérénité, la médecine.",
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

                            // it will cover 2/3 of free spaces
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                                            Text(""),

                              Text("Nos Transporteurs".toUpperCase(),
                                  style: GoogleFonts.poppins(
                                      fontSize: 26,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                width: size.width / 1.15,
                                child: Text(
                                    "Nos transporteurs ont eux aussi à leur charges certaines tâches. C’est en gardant ceci en tête et la préciosité de vos échantillons que nous les avons sélectionnés.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                              ),
                              Text(""),
                              Container(
                                width: size.width / 1.15,
                                child: Text(
                                    "Ils effectuent en autre un trajet approprié, c’est-à-dire le plus court. Les vérifications de documentations et les contrôles exigés en matière de marquage et d’étiquetage.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                              ),
                              Text(""),
                              Container(
                                width: size.width / 1.15,
                                child: Text(
                                    "En constante collaboration avec ces derniers, Havila Way peut bénéficier de leur expertise pour de nouveaux types d’envois ou de nouvelles règles en application.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                              ),
                              Text("")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text("Nos tests disponibles".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: size.width / 2.5,
                                child: Column(
                                  children: [
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller,
                                      title: Text(
                                        "Hémostase : thrombose",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [trombose()],
                                      ),
                                      onTap: () {
                                        //debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        //debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller2,
                                      title: Text(
                                        "Hémostase : tendance hémorragique",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [tendancextends()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller3,
                                      title: Text(
                                        "Immunologie",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Immu()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller4,
                                      title: Text(
                                        "Ions",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Ions()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller5,
                                      title: Text(
                                        "Protéines",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Proteine()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller6,
                                      title: Text(
                                        "Foie – pancréas",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Foie()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller8,
                                      title: Text(
                                        "Myocarde",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Myocarde()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller9,
                                      title: Text(
                                        "Vitamines - Métabolisme des glucides",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Vitamines()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller10,
                                      title: Text(
                                        "Divers",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Divers()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller11,
                                      title: Text(
                                        "Tests orthomoléculaires",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [Tests()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller12,
                                      title: Text("AUTO-anticorps",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )),
                                      content: Column(
                                        children: [auto()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller13,
                                      title: Text(
                                        "PSA",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [PSA()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                    ExpandedTile(
                                      theme: const ExpandedTileThemeData(
                                        headerColor: Color(0xff1E2036),
                                        headerRadius: 24.0,
                                        headerPadding: EdgeInsets.all(24.0),
                                        headerSplashColor: Colors.white,
                                        contentBackgroundColor:
                                            Color.fromARGB(255, 92, 99, 134),
                                        contentPadding: EdgeInsets.all(24.0),
                                        contentRadius: 12.0,
                                      ),
                                      controller: ETcontroller14,
                                      title: Text(
                                        "Oncologie",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      content: Column(
                                        children: [oncologie()],
                                      ),
                                      onTap: () {
                                        debugPrint("tapped!!");
                                      },
                                      onLongTap: () {
                                        debugPrint("long tapped!!");
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: size.width / 2.5,
                                  child: Column(
                                    children: [
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller15,
                                        title: Text(
                                          "Fonction thyroïdienne",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [tyro()],
                                        ),
                                        onTap: () {
                                          //debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          //debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller16,
                                        title: Text(
                                          "Métabolisme osseux",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Meta()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller17,
                                        title: Text(
                                          "Glande surrénale – hypertension",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Glande()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller18,
                                        title: Text(
                                          "Grossesse",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Grossesse()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller19,
                                        title: Text(
                                          "Fonction ovarienne – gonades",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Ovar()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller20,
                                        title: Text(
                                          "Hormones",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Hormone()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller21,
                                        title: Text(
                                          "Médicaments",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Medi()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller22,
                                        title: Text(
                                          "Allergie",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Allergie()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller23,
                                        title: Text(
                                          "Maladie Coeliaque – entéropathie au gluten",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Maladie()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller24,
                                        title: Text(
                                          "Examen de sperme",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Sperme()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller25,
                                        title: Text(
                                            "Sérologie infectieuse bactérienne",
                                            style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            )),
                                        content: Column(
                                          children: [Sero()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                      ExpandedTile(
                                        theme: const ExpandedTileThemeData(
                                          headerColor: Color(0xff1E2036),
                                          headerRadius: 24.0,
                                          headerPadding: EdgeInsets.all(24.0),
                                          headerSplashColor: Colors.white,
                                          contentBackgroundColor:
                                              Color.fromARGB(255, 92, 99, 134),
                                          contentPadding: EdgeInsets.all(24.0),
                                          contentRadius: 12.0,
                                        ),
                                        controller: ETcontroller26,
                                        title: Text(
                                          "Autres",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        content: Column(
                                          children: [Autres()],
                                        ),
                                        onTap: () {
                                          debugPrint("tapped!!");
                                        },
                                        onLongTap: () {
                                          debugPrint("long tapped!!");
                                        },
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
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

class trombose extends StatelessWidget {
  const trombose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "D-dimères",
        style: GoogleFonts.poppins(
          fontSize: 18,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      Text("Antithrombine",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Protéine C",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Protéine S",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      Text("RPCa"),
      Text("Facteur V leiden"),
      Text("Mutation facteur II (G20210A)"),
      Text("Anticoagulant lupique"),
      Text("Anti-cardiolipine IgM"),
      Text("Anti-cardiolipine IgG"),
      Text("Anti-β2 GPI IgM"),
      Text("Anti-β2 GPI IgG"),
      Text("Homocystéine")
    ]);
  }
}

class Divers extends StatelessWidget {
  const Divers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Angiotensine conv. Enzyme (ACE)"),
      Text("Acide lactique"),
      Text("Céruloplasmine + cuivre"),
      Text("Cholinestérase"),
      Text("Préalbumine"),
      Text("α1-Antitrypsine"),
      Text("β2-Microglobuline"),
    ]);
  }
}

class Immu extends StatelessWidget {
  const Immu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Lymphocytes T, B et NK"),
      Text("Lymphocytes T (T4/T8)"),
      Text("IgG2"),
      Text("IgG3"),
      Text("IgG4"),
      Text("Complément CH50"),
      Text("Complément C3"),
      Text("AComplément C3d"),
      Text("Complément C4"),
      Text("C1 inhibiteur"),
      Text("Tryptase"),
    ]);
  }
}

class Ions extends StatelessWidget {
  const Ions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Sodium"),
      Text("Potassium"),
      Text("Chlorures"),
      Text("Réserve alcaline"),
      Text("Calcium"),
      Text("Phosphore"),
      Text("Mutation facteur II (G20210A)"),
      Text("Anticoagulant lupique"),
      Text("Anti-cardiolipine IgM"),
      Text("Anti-cardiolipine IgG"),
      Text("Anti-β2 GPI IgM"),
      Text("Anti-β2 GPI IgG"),
      Text("Homocystéine")
    ]);
  }
}

class Proteine extends StatelessWidget {
  const Proteine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Protéines totales"),
      Text("Electrophorèse des protéines"),
      Text("Immunofixation"),
      Text("IgA"),
      Text("IgC"),
      Text("IgM"),
      Text("Chaînes légères libres"),
    ]);
  }
}

class Foie extends StatelessWidget {
  const Foie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Bilirubine totale + directe"),
      Text("ASAT (GOT)"),
      Text("ALAT (GPT)"),
      Text("Gamma-GT"),
      Text("Phosphatase alcaline (PA)"),
      Text("Iso-PA (pathologie osseuse)"),
      Text("Mutation facteur II (G20210A)"),
      Text("Iso-PA (absence path. Osseuse)"),
      Text("Anti-cardiolipine IgM"),
      Text("Anti-cardiolipine IgG"),
      Text("LDH"),
      Text("Amylase"),
      Text("Lipase")
    ]);
  }
}

class Myocarde extends StatelessWidget {
  const Myocarde({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("CK"),
      Text("CK-MB"),
      Text("Troponine"),
      Text("LDH"),
      Text("ASAT (GOT)"),
      Text("ASAT (GPT)"),
      Text("BNP"),
    ]);
  }
}

class Vitamines extends StatelessWidget {
  const Vitamines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Insuline à jeun"),
      Text("C-peptide à jeun"),
    ]);
  }
}

class tendancextends extends StatelessWidget {
  const tendancextends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("APTT (TCA)"),
      Text("TP (+INR)"),
      Text("Fibrinogène"),
      Text("Facteur von Willebrand, Ag"),
      Text("Facteur von Willebrand, activité"),
      Text("Facteur VIII"),
      Text("Facteur IX")
    ]);
  }
}

class Tests extends StatelessWidget {
  const Tests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Facteur rhumatoide"),
      Text("CRP"),
      Text("Anti-CCP"),
      Text("Anticorps antinucléaires (AAN)"),
      Text("Anti-ENA, Anti-ADN"),
      Text("Facteur V leiden"),
      Text("HLA B27"),
      Text("ANCA"),
    ]);
  }
}

class auto extends StatelessWidget {
  const auto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Surrénal"),
      Text("Peau"),
      Text("Insuline"),
      Text("Pancréas"),
      Text("GAD"),
      Text("Anti-Rach"),
      Text("Muscles lisses"),
      Text("LKM"),
      Text("Mitochondries"),
      Text(" FACT. Intrinsèque"),
      Text("Cell.Pariét.(estomac)"),
      Text("Rein (GBM)"),
    ]);
  }
}

class PSA extends StatelessWidget {
  const PSA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("PSA thérapeutique (max. 2x/an)"),
      Text("PSA familial, >40ans (max 1x/an)"),
      Text("PSA autres"),
      Text("PSA libres"),
    ]);
  }
}

class oncologie extends StatelessWidget {
  const oncologie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("CEA"),
      Text("CA 125 ovaire"),
      Text("CA 15.3 sein"),
      Text("CA 19.9 pancréas"),
      Text("NSE apud & poumon"),
      Text("AG SCC col de l’utérus"),
      Text("β-HCG libre"),
      Text("Chromogranine A"),
      Text("α1-Foetoprotéine"),
    ]);
  }
}

class tyro extends StatelessWidget {
  const tyro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("TSH"),
      Text("T4 libre"),
      Text("T3 libre"),
      Text("TSI"),
      Text("Anti-TPO"),
      Text("Anti-thyroglobuline"),
      Text("Thyroglobuline"),
      Text("Calcitonine"),
      Text("Chromogranine A"),
      Text("α1-Foetoprotéine"),
    ]);
  }
}

class Meta extends StatelessWidget {
  const Meta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Phosphatase alcaline osseuse"),
      Text("Parathormone"),
      Text("Vitamine D (25-OH Vit. D)"),
    ]);
  }
}

class Glande extends StatelessWidget {
  const Glande({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Transcortine"),
      Text("Cortisol"),
      Text("ACTH"),
      Text("Aldostrérone"),
      Text("ACTH"),
      Text("Aldostréone"),
      Text("Rénine"),
      Text("Catécholamines"),
    ]);
  }
}

class Grossesse extends StatelessWidget {
  const Grossesse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("DPNI (>12,0 sem.)"),
      Text("HCG"),
      Text("Foetoprotéine"),
      Text("Down 1ier Trim"),
      Text("Down 2ier Trim"),
    ]);
  }
}

class Ovar extends StatelessWidget {
  const Ovar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Jour du cycle"),
      Text("Oestradiol"),
      Text("Progestérone"),
      Text("LH"),
      Text("FSH"),
      Text("Prolactine"),
      Text("Testostérone"),
      Text("CEA"),
      Text("SHGB"),
      Text("Androstanediol glucuronide"),
      Text("Androstènedione"),
      Text("Sulfate de DHEA"),
      Text("Inhibine B"),
      Text("Anti-Mullerian hormone (AMH)"),
      Text("Oestrone"),
      Text("17-OH Progestérone"),
      Text("sFlt-1/PIGF ratio (pré-éclampsie)")
    ]);
  }
}

class Hormone extends StatelessWidget {
  const Hormone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Glatrine"),
      Text("Hormone de croissance"),
      Text("IGF-I"),
      Text("IGFBP-3"),
    ]);
  }
}

class Medi extends StatelessWidget {
  const Medi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Lamotrigine"),
      Text("Phénytoine"),
      Text("Ac.Valproique"),
      Text("Carbamazépine"),
      Text("Phénobartial"),
      Text("Clonazépam"),
      Text("Digoxine"),
      Text("Amiodarone"),
      Text("Théophylline"),
      Text("Lévétiracétam"),
      Text("Topiramate"),
      Text("Cyclosporine (EDTA)"),
      Text("Tacrolimus (EDTA)"),
    ]);
  }
}

class Allergie extends StatelessWidget {
  const Allergie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Mélanges"),
      Text("Dermatophagoides – poussières"),
      Text("Epithelium d’animaux"),
      Text("Alimentation"),
      Text("Arbres – herbacées"),
      Text("Divers"),
    ]);
  }
}

class Maladie extends StatelessWidget {
  const Maladie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Anti-transglutaminase IgA"),
      Text("Anti-gliadine DP IgG"),
      Text("Anti-transglutamine IgG"),
      Text("Anti-gliadine DP IgA"),
    ]);
  }
}

class Sperme extends StatelessWidget {
  const Sperme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Anti-Sperme IgG (Mar indirect) (sérum)"),
    ]);
  }
}

class Sero extends StatelessWidget {
  const Sero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("ASLO"),
      Text("Bartonella henselae"),
      Text("Borrelia IgM, Lyme"),
      Text("Borrelia IgG, Lyme"),
      Text("Chlamydia trachomatis IgG"),
      Text("Helicobacter pyroli IgG"),
      Text("Syphilis CLIA"),
      Text("Coxiella burnetii (Q-fever)"),
    ]);
  }
}

class Autres extends StatelessWidget {
  const Autres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Sérologie Toxoplasma"),
      Text("Sérologie cytomégalovirus"),
      Text("Diagnostic virologique"),
      Text("Micro-organismes respiratoires"),
      Text("Organes génitaux"),
      Text("Mycoses"),
      Text("Gorge (eSW)"),
      Text("Monoclonalité"),
      Text("Surrénale – hypertension"),
      Text("Drogues dans les urines"),
      Text("Toxicologie sanguine"),
      Text("Métaux")
    ]);
  }
}

class trou extends StatelessWidget {
  const trou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverCrossFadeWidget(
        duration: Duration(milliseconds: 300),
        firstChild: GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset("assets/trouavant.jpg",
                width: 450, height: 300, fit: BoxFit.cover),
          ),
        ),
        secondChild: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset("assets/trou_apres.jpg",
                width: 450, height: 300, fit: BoxFit.cover),
          ),
        ));
  }
}
