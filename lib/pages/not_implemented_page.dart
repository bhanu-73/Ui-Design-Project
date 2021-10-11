import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Niy extends StatelessWidget {
  const Niy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Implemented Yet",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w500,),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: () {Navigator.pop(context);},),
      ),
      body : Center(
        child: Image.asset("assets/idea.png",scale: 5,),
      )
    );
  }
}