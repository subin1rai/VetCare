
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vetapp/Screen/kind.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 224, 222, 250),
            borderRadius: BorderRadius.circular(15)
          ),
          child: IconButton(
            icon: Icon(CupertinoIcons.back, size: 40,),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [

            Positioned(
              top: 10,
              left: 120,
              child: Text("Overview",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ),
      
            Positioned(
              top: 190,
              child: Container(
                height: 210,
                width: 390,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 253, 234),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12)
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Name', style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                            ),
                          ),),
                          Text("Mr.Kiyo Thapa", style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),)
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: Color.fromARGB(255, 224, 222, 250),
                            width: 1
                          ))
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Species', style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                            ),
                          ),),
                          Text("Cat", style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),)
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: Color.fromARGB(255, 224, 222, 250),
                            width: 1
                          ))
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Breed', style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                            ),
                          ),),
                          Text("Unknown", style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ),

            Positioned(
              top: 100,
              right: 120,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 253, 234),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color.fromARGB(31, 75, 80, 86))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/cat.png', color: Color(0xff6256CD), height: 90,),
                  ],
                ),
              )
            ),

            Positioned(
              bottom: 30,
              left: 18,
              child: GestureDetector(
                child: Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 98, 0),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color.fromARGB(31, 75, 80, 86))
                  ),
                  child: Center(
                    child: Text('Create', style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),)
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Choose()),
                  );
                },
              )
            )

          ],
        ),
      )
    );
  }
}