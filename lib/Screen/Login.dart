import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vetapp/Screen/HomePage.dart';
import 'package:vetapp/Screen/Register.dart';
import 'package:vetapp/Screen/register2.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/top.png',
                  fit: BoxFit.cover,
                  width: 380,
                  height: 180,
                ),
                Positioned(
                  top: 30,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome  Back",
                          style: GoogleFonts.outfit(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "VatCare",
                          style: GoogleFonts.outfit(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 5,),
            Column(
              children: [
                          Text(
                          "Login",
                          style: GoogleFonts.outfit(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Text(
                          "Login to your account",
                          style: GoogleFonts.outfit(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Email
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Email",
                      style: GoogleFonts.outfit(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 4, 20, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                            prefixIcon: Icon(
                      Icons.email,
                      color: const Color(0xFFB1B1B1),
                    ), 
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 23,
                            vertical:
                                18), // Padding around the input field's content
                        border: OutlineInputBorder(
                          // Border around the input field
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled:
                            true, // Specify whether the input field should be filled
                        fillColor:
                            Colors.white, // Color used to fill the input field
                      ),
                    ),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(95, 176, 176, 176),
                          blurRadius: 10,
                          offset: Offset(2, 5),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Password",
                      style: GoogleFonts.outfit(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 4, 20, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                            prefixIcon: Icon(
                      Icons.lock,
                      color: const Color(0xFFB1B1B1),
                    ), 
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 23,
                            vertical:
                                18), // Padding around the input field's content
                        border: OutlineInputBorder(
                          // Border around the input field
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled:
                            true, // Specify whether the input field should be filled
                        fillColor:
                            Colors.white, // Color used to fill the input field
                      ),
                    ),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(95, 176, 176, 176),
                          blurRadius: 10,
                          offset: Offset(2, 5),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
          
        
            const SizedBox(height: 10),
              Center(
                      child: GestureDetector(
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ((HomePage()))),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                          width: 337,
                          height: 56,
                          child: Text(
                            'Login',
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
                          ),)),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an Account! ", style: GoogleFonts.outfit(fontSize:16),),
                              GestureDetector(
                                onTap: () {
                                   Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Register())),
                          );
                                },
                                child: Text("Sign up", style: GoogleFonts.outfit(fontSize:16, color:Colors.orange),)),
                            ],
                          )
          ],
        ),
      ),
    );
  }
}
