import 'package:havilaway/Widgets/def_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_item.dart';

class FooterMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.1),
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
            padding: const EdgeInsets.all(22.0),
            child: Text("© 2022 by Enfance Meurtrie Sans Frontières",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Color.fromARGB(255, 0, 0, 0))),
          ),
          SizedBox(width: 5),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text("by F.A",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 4,
                    color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
