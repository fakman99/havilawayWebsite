import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extensions/constant.dart';
import 'dart:html' as html;

class BodyMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: ClipRRect(
                      
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset("assets/logo_emsf.jpg",
                      color:  Color.fromARGB(255, 40, 42, 71),
                          width: 350, height: 350, fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                bottom: 130,
              )),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(99, 0, 0, 0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, top: 44, right: 24),
                        child: Text("Vos résultats cliniques".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Color.fromARGB(255, 245, 245, 245))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 24),
                        child: Text("en temps et en heure.".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Color.fromARGB(255, 255, 255, 255))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, bottom: 44, right: 24),
                        child: Text(
                            "Des DPNI aux tests génétiques en passant par les biopsies,\nHavila Way vous accompagne dans vos diagnostics."
                                .toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255))),
                      ),
                    ],
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
