import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Welcome, User",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text("No pets yet.", style: TextStyle(fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F4F3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 160,
                            width: 130,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              "assets/cat.png",
                              color: const Color(0xff5947D6),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mr.Kiyo Thapa",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 197, 193, 255),
                                    borderRadius: BorderRadius.circular(9)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: const Icon(
                                        CupertinoIcons.doc,
                                        color: Color(0xff5947D6),
                                      ),
                                    ),
                                    Text("0 records",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff5947D6),
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                height: 30,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 197, 193, 255),
                                    borderRadius: BorderRadius.circular(9)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: const Icon(
                                        CupertinoIcons.bell,
                                        color: Color(0xff5947D6),
                                      ),
                                    ),
                                    Text("0 reminders",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff5947D6),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffFE750B),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10,5,10,5),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        CupertinoIcons.add,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      SizedBox(width: 4,),
                                      Text(
                                        "Add record",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.add, color: Color.fromARGB(255, 129, 108, 251)),
                  GestureDetector(
                    child: Text("Add Pet",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 129, 108, 251))),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
