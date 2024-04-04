import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vetapp/Screen/create.dart';

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 222, 250),
              borderRadius: BorderRadius.circular(15)),
          child: IconButton(
            icon: Icon(
              CupertinoIcons.back,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Create()),
              );
            },
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      Text(
                        "What kind of pet do \n          you have?",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 222, 250),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/dog.png',
                                    color: Color(0xff6256CD),
                                    height: 140,
                                  ),
                                  Text(
                                    'Dog',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 222, 250),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Image.asset(
                                      'assets/cat.png',
                                      color: Color(0xff6256CD),
                                      height: 120,
                                    ),
                                  ),
                                  Text(
                                    'Cat',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Next',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (Create())),
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
