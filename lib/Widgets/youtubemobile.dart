import 'package:havilaway/Extensions/hover_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../Extensions/constant.dart';
import 'dart:html' as html;

class Mobile extends StatelessWidget {
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
                child: Text("EMSF Interview",
                    style: GoogleFonts.poppins(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Text(" - Pasteur Claude Jean Reynaud",
                    style: GoogleFonts.poppins(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 18),
                child: Center(
                  child: Container(
                    color: Colors.transparent,
                                        width: (MediaQuery.of(context).size.width/4)*3,

                  
                  ),
                ),
              ),
               
            ],
          ),
        ],
      ),
    );
  }
}
