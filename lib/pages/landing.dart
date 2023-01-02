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
import 'package:havilaway/pages/Homepage.dart';
import 'package:havilaway/pages/Moyens.dart';
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

class Landing extends StatefulWidget {
  static const String route = '/';

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 730) {
      return Scaffold(
        backgroundColor: Color(0xff1E2036),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Welcome into Havilaway portal",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
          ),
          Center(
            child: Image.asset(
              "assets/work2.jpg",
              width: screenSize.width / 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      color: Color.fromARGB(255, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Container(
                            width: 300,
                            height: MediaQuery.of(context).size.height/4,
                            padding: new EdgeInsets.all(10.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Color(0xff1E2036),
                              elevation: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: SizedBox(
                                      
                                        child: Image.asset(
                                          
                                            "assets/logo_emsf.jpg",height: 100,width: 100,
                                        fit: BoxFit.cover,)),
                                    title: Text('Havilaway Medical',
                                        style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                                    subtitle: Text(
                                        'Click to show the havila way website',
                                        style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Color.fromARGB(255, 166, 166, 166),
                              )),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Text("SOON",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                          Text("SOON",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                          Text("SOON",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ],
                      ),
                    ))),
          ),
          Container(
            height: 20,
          )
        ]),
      );
    } else {
      // This size provide us total height and width  of our screen
      return Scaffold(
        backgroundColor: Color(0xff1E2036),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Welcome into Havilaway portal",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
          ),
          Center(
            child: Image.asset(
              "assets/work2.jpg",
              width: screenSize.width / 4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      color: Color.fromARGB(255, 0, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HoverCrossFadeWidget(
                              duration: Duration(milliseconds: 300),
                              firstChild: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(HomeScreen.route);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset("assets/logo_emsf.jpg",
                                      color: Colors.white,
                                      width: 350,
                                      height: 350,
                                      fit: BoxFit.cover),
                                ),
                              ),
                              secondChild: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(HomeScreen.route);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset("assets/logo_emsf.jpg",
                                      color: Color(0xff1E2036),
                                      width: 350,
                                      height: 350,
                                      fit: BoxFit.cover),
                                ),
                              )),
                          Text("SOON",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                          Text("SOON",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                          Text("SOON",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ],
                      ),
                    ))),
          ),
        ]),
      );
    }
  }
}
