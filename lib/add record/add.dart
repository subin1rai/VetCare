import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPicture extends StatefulWidget {
  const AddPicture({super.key});

  @override
  State<AddPicture> createState() => _AddPictureState();
}

class _AddPictureState extends State<AddPicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E4FF),
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(15),
                  child: const Icon(CupertinoIcons.back,color: Color(0xff5947D6),size: 30,)),
              Text("Skip",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 20))
            ]),
            const SizedBox(
              height: 150,
            ),
            Text("Add Picture",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 34)),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width:120,
                decoration: BoxDecoration(
                    color: const Color(0xffE7E4FF),
                    borderRadius: BorderRadius.circular(12)),
                child: const Icon(CupertinoIcons.camera_fill, size: 50,color: Color(0xff5947D6),)),
              const Spacer(),
                Container(
                  padding: const EdgeInsets.fromLTRB(80,10,80,10),
                   decoration: BoxDecoration(
                    color: const Color(0xffFE750B),
                    borderRadius: BorderRadius.circular(12)),
                  child: Text("Next", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 28, color:Colors.white),),
                ),
          ],
        ),
      ),
    );
  }
}
