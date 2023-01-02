import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

import '../Extensions/constant.dart';
import 'dart:html' as html;

class DefaultButton2 extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton2({
    required this.text,
    required this.press,
  }) : super();

  @override
  Widget build(BuildContext context) {
        final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      minimumSize: Size(88, 44),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      backgroundColor: Colors.blue,
    );

    return ClipRRect(
      
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        
      style: flatButtonStyle,
      onPressed: () {
js.context.callMethod('open', ['https://forms.gle/aSK5pZx8YXVcf7VNA']);
      },
      child:Text(
          text.toUpperCase(),                             style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white)),
    ));
  }
}