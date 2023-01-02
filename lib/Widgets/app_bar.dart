import 'dart:async';

import 'package:havilaway/Widgets/def_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
    final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 129, 32, 32),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Image.asset(
              "assets/la-bombetta.jpg",
              height: 100,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(width: 5),
          Spacer(),
          GestureDetector(
            onTap: () {
              print("object");
              Timer(
                Duration(milliseconds: 500),
                () => _controller.jumpTo(_controller.position.extentAfter),
              );
            },
            child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "Qui sommes-nous?".toUpperCase(),
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16,color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.8))),

      ),
          ),
          MenuItems(
            title: "Nos moyens",
          ),
          MenuItems(
            title: "Contact",
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                html.window.location.href =
                    "https://forms.gle/aSK5pZx8YXVcf7VNA";
              },
              child: DefaultButton(text: "Take Action", press: () {}),
            ),
          )
        ],
      ),
    );
  }
}
