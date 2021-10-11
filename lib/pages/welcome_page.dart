import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Padding(padding: const EdgeInsets.only(top:90),child: Text("Hi, Welcome",style: GoogleFonts.montserrat(fontSize: 27,fontWeight: FontWeight.w500),),),
         Padding(padding: const EdgeInsets.only(top:5),child: Text("Affordable, easy and efficient.",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey),),),
         Padding(padding: const EdgeInsets.only(top: 80,bottom: 30),child: Image.asset("assets/4207.jpg",scale: 3,)),
        _button1(context),
        _signIn(context),
       ],
     ),
   );
  }
}

Widget _button1(context){
  return Container(
    width: MediaQuery.of(context).size.width*0.98,
    padding: const EdgeInsets.only(top: 1,bottom: 1),
    margin: const EdgeInsets.only(right: 25,left: 25,top:30),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255,243,111,19),
      borderRadius: BorderRadius.circular(50)
    ),
    child: TextButton(
      child: Text("Start Shopping",style: GoogleFonts.montserrat(fontSize: 22,color:Colors.white,fontWeight: FontWeight.w500),),
      onPressed: (){Navigator.pushNamed(context, 'homePage');},)
  );
}

Widget _signIn(context){
  return Padding(
          padding: const EdgeInsets.fromLTRB(35,3,35,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Have an account?",style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.black,
              ),),
              TextButton(
                child: Text('Sign In',style: GoogleFonts.montserrat(
                    fontSize: 17,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500
                ),),
                onPressed: () {Navigator.pushNamed(context, 'loginPage');},
              )
            ],
          ),
        );
}