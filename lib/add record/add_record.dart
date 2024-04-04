import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFE7E4FF),
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: const Icon(
                        CupertinoIcons.clear,
                        color: Color(0xff5947D6),
                        size: 25,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Text("Add a record",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              Text("Record type",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                      SizedBox(height: 8,),
              TextField(
          
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    
                    hintText: "Select"),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Admission date",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                       Container(
                            padding: const EdgeInsets.fromLTRB(8,8,8,8),
                            margin: const EdgeInsets.only(right: 0),
                             decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 231, 231),
                          borderRadius: BorderRadius.circular(5)),
                            child: Text("10-Mar-2024",style:  GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:  Color.fromARGB(255, 0, 0, 0)),),
                          ),
              ],),
              const SizedBox(height: 15,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Expiration date",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                       Container(
                            padding: const EdgeInsets.fromLTRB(8,8,8,8),
                            margin: const EdgeInsets.only(right: 0),
                             decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 231, 231),
                          borderRadius: BorderRadius.circular(5)),
                            child: Text("10-Apr-2024",style:  GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:  Color.fromARGB(255, 0, 0, 0)),),
                          ),
              ],),
          
               const SizedBox(
                height: 15,
              ),
              Text("Notes",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                      SizedBox(height: 8,),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    ),
              ),
          
               const SizedBox(
                height: 15,
              ),
             Text("Add files",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                      SizedBox(height: 8,),
              Row(children: [
                 Container(
                          width: 120,
                              padding: const EdgeInsets.fromLTRB(15,10,15,10),
                              margin: const EdgeInsets.only(right: 15),
                               decoration: BoxDecoration(
                            color: Color(0xffFEEBDC),
                            borderRadius: BorderRadius.circular(5)),
                              child: Row(
                              
                                children: [
                                 const Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child:  Icon(
                                            CupertinoIcons.camera_fill,
                                            color: Color(0xffFD7509),
                                          ),
                                  ),
                                  Text("Photo",style:  GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color:  Color(0xffFD7509)),),
                                ],
                              ),
                            ),
                              Container(
                          width: 130,
                              padding: const EdgeInsets.fromLTRB(15,10,10,10),
                              margin: const EdgeInsets.only(right: 15),
                               decoration: BoxDecoration(
                            color: Color(0xffFEEBDC),
                            borderRadius: BorderRadius.circular(5)),
                              child: Row(
                              
                                children: [
                                 const Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child:  Icon(
                                            CupertinoIcons.doc_fill,
                                            color: Color(0xffFD7509),
                                          ),
                                  ),
                                  Text("Document",style:  GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color:  Color(0xffFD7509)),),
                                ],
                              ),
                            ),
              ],),
          
           const SizedBox(height: 15,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Reminder norification",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                       Container(
                            padding: const EdgeInsets.fromLTRB(8,8,8,8),
                            margin: const EdgeInsets.only(right: 0),
                             decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 231, 231),
                          borderRadius: BorderRadius.circular(5)),
                            child: Text("button",style:  GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:  Color.fromARGB(255, 0, 0, 0)),),
                          ),
              ],),
              SizedBox(height: 10,),
          
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Reminder Date",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
                      Row(
                        children: [
                           Container(
                            padding: const EdgeInsets.fromLTRB(8,8,8,8),
                            margin: const EdgeInsets.only(right: 0),
                             decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 231, 231),
                          borderRadius: BorderRadius.circular(5)),
                            child: Text("05/04/...",style:  GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:  Color.fromARGB(255, 0, 0, 0)),),
                          ),
                          SizedBox(width: 10,),
                           Container(
                            padding: const EdgeInsets.fromLTRB(8,8,8,8),
                            margin: const EdgeInsets.only(right: 0),
                             decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 231, 231),
                          borderRadius: BorderRadius.circular(5)),
                            child: Text("9:15 PM",style:  GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:  Color.fromARGB(255, 0, 0, 0)),),
                          ),
                        ],
                      )
              ],),
              const SizedBox(height: 170,),
              Center(
                child: GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
                    decoration: BoxDecoration(
                        color: const Color(0xffFE750B),
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Create",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
