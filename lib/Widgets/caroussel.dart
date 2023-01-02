import 'package:carousel_slider/carousel_slider.dart';
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


class Carouss extends StatefulWidget {
@override
  _CaroussState createState() => _CaroussState();
}
 class _CaroussState extends State<Carouss> {
  @override
  Widget build(BuildContext context) {
    final List<String> imagesList = [
     "assets/7.jpg",
     "assets/p1.jpg",
     "assets/p2.jpg",
     "assets/p4.jpg",
     "assets/p6.jpg",
     "assets/p5.jpeg"
];



  int _currentIndex = 0;
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
                child: Text("EMSF Galerie",
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
          children: [
            Padding(
              padding: const EdgeInsets.only(top : 12.0, bottom: 12),
              child: CarouselSlider(
                options: CarouselOptions(
                                          height :MediaQuery.of(context).size.height/3,

              viewportFraction :0.275,
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                                    padding: const EdgeInsets.only(top : 24.0, bottom: 24),

                        child:  ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            child: Container(
                          height :MediaQuery.of(context).size.height/3,

                              child: Image.asset(
                                item,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
           
          ],
        ),
  
  
        ],
      ),
    );
  }

}
  

