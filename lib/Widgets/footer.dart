import 'package:havilaway/Widgets/def_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_item.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
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
            padding: const EdgeInsets.all(20.0),
            child: Text("© HAVILAWAY",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0))),
          ),
          SizedBox(width: 5),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("by F.A",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
