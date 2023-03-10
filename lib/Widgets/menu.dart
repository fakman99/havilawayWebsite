import 'package:havilaway/Extensions/hover_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../Extensions/constant.dart';
import 'dart:html' as html;

class Menu extends StatelessWidget {
  void downloadFile(String url) {
    html.AnchorElement anchorElement = new html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24),
                child: Text("Nos experts",
                    style: GoogleFonts.poppins(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Text("et nos collaborateurs",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                        "Les experts collaborant avec Havila Way, partagent avec notre entreprise des valeurs communes.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Text(''),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                        "Actuellement, beaucoup portent un accent particulier sur la maladie et d??laissent quelques peu ses sources comme des anomalies g??n??tiques, des d??ficits ou encore des d??s??quilibres. Ces diverses sources mal trait??s peuvent entra??ner la maladie.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Text(''),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                        "Nos collaborateurs munis de technologies de pointe, vous fournissent les outils vous permettant d???agir de mani??re pr??cise. Quel que soit vos objectifs sur la sant?? de vos patients (pr??ventif ou curatif). Les experts, biologistes, m??decins et pharmaciens sont tous sp??cialistes et motiv??s par ses valeurs.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  Text(''),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                        "Les laboratoires avec lesquels nous travaillons sont accr??dit??s ISO 15189 aupr??s de l???organisme BELAC. Norme internationale applicable aux laboratoires biologiques qui d??termine un niveau d???exigence de qualit?? et de comp??tence propres.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 26.0),
                child: Center(
                  child: Container(
                    color: Colors.transparent,
                    height: 450,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 12),
                child: HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild:ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/images/p1.jpg",
                            width: MediaQuery.of(context).size.width / 3,
                                height: MediaQuery.of(context).size.height / 3,

                            fit: BoxFit.cover),
                      ),
                    secondChild: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/images/p2.jpg",
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 3,
                            fit: BoxFit.cover),
                      )),
              )
             
            ],
          ),
        ],
      ),
    );
  }
}
