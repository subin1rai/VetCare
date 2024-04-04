import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vetapp/Screen/Register.dart';

class OnloadingScreen extends StatefulWidget {
  const OnloadingScreen({super.key});

  @override
  State<OnloadingScreen> createState() => _OnloadingScreenState();
}

class _OnloadingScreenState extends State<OnloadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/back.png',
                fit: BoxFit.cover,
                width: 500,
                height: 350,
              ),
              Positioned(
                top: 120,
                child: Image.asset(
                  'assets/women.png',
                  width: 290,
                  height: 290,
                ),
              ),
              Positioned(
                top: 30,
                child: Text(
                  "VetCare",
                  style: GoogleFonts.outfit(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Take Care ",
                      style: GoogleFonts.outfit(
                        color: Color(0xFF9B74C4),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "of",
                      style: GoogleFonts.outfit(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Your Pet",
                  style: GoogleFonts.outfit(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Compassionate Care for",
                  style: GoogleFonts.outfit(
                    color: Color(0xff888888),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "your best friend",
                  style: GoogleFonts.outfit(
                    color: Color(0xff888888),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 90),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Register())),
                          );
                        },
                        //get start
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                          width: 337,
                          height: 56,
                          child: Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF9791BB),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        )))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
