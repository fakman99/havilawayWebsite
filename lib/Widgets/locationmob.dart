import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:havilaway/Extensions/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../Extensions/constant.dart';
import 'package:mb_contact_form/mb_contact_form.dart';

import 'dart:html' as html;

class LocationMob extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final control = fb.control<String>('', [Validators.required]);

  final form = fb.group({
    'name': ['', Validators.required],
    'prename': ['', Validators.required],
    'email': ['', Validators.required, Validators.email],
    'msg': ['', Validators.required],
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adresse et contact".toUpperCase(),
                        style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                                         GestureDetector(
                          onTap: () {
                            html.window.location.href =
                                "https://goo.gl/maps/AXAJ6XPgzxHfdTzi6";
                          },
                          child: HoverCrossFadeWidget(
                            duration: Duration(milliseconds: 800),
                            firstChild: Column(
                              children: [
                                Text("Havila Way Limited location",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            secondChild: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Havila Way Limited",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                                Text("4th Floor, Silverstream House",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                                Text("45 Fitzroy Street, Fitzrovia",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                                Text("London, W1T 6EB, United Kingdom",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                                Text(
                                    "Registered in England and Wales No. 11488260",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          )).showCursorOnHover,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/logo_emsf.jpg",
                            width: 350, height: 350, fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Laissez-nous un message"),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 2.5,
                child: ReactiveForm(
                  formGroup: this.form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReactiveTextField(
                        decoration: InputDecoration(
                            hintText: "Nom",
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                        cursorColor: Colors.black,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        formControlName: 'name',
                      ),
                      ReactiveTextField(
                        decoration: InputDecoration(
                            hintText: "Prénom",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                        cursorColor: Colors.black,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        formControlName: 'prename',
                      ),
                      ReactiveTextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        formControlName: 'email',
                      ),
                      ReactiveTextField(
                        maxLength: 500,
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: "Message",
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        formControlName: 'msg',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () {
                              final outputname = form.control('name');
                              final outputprename = form.control('prename');
                              final outputmail = form.control('email');
                              final outputmsg = form.control('msg');

                              print(outputname.value); // outputs: Sofia
                              print(outputprename.value); // outputs: Sofia
                              print(outputmail.value); // outputs: Sofia
                              print(outputmsg.value); // outputs: Sofia
                              if (outputname.value.toString().length == 0 ||
                                  outputprename.value.toString().length == 0) {
                                var snackBar = SnackBar(
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'On Snap!',
                                    message: 'Invalid name',
                                    contentType: ContentType.warning,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else if (outputmail.value.toString().length ==
                                  0) {
                                var snackBar = SnackBar(
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'On Snap!',
                                    message: 'Invalid email',
                                    contentType: ContentType.warning,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else if (outputmsg.value.toString().length == 0) {
                                var snackBar = SnackBar(
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'On Snap!',
                                    message: 'No message typed in!',
                                    contentType: ContentType.warning,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                FirebaseFirestore.instance.collection('msg').add({
                                  'name': outputname.value,
                                  'prename': outputprename.value,
                                  'email': outputmail.value,
                                  'msg': outputmsg.value,
                                  'date': DateTime.now()
                                });
                                var snackBar = SnackBar(
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'Send!',
                                    message: 'Message sent with success!',
                                    contentType: ContentType.success,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            },
                            child: Text("ENVOYER",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ))),
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
