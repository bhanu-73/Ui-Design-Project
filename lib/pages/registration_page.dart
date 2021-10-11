import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :Stack(
        children: [
          Padding(padding: const EdgeInsets.only(top: 100,left:30),child: Text("Register...",style: GoogleFonts.lato(fontSize: 37,fontWeight: FontWeight.w700,color: const Color.fromRGBO(251, 171, 126, 1),),),),
          _registrationScrollView(context,0.2)
        ],
      ),
    ); 
  }
}

Widget _paddedTextField(BuildContext context,String text, double l, double t,
    double r, double b) {
  return Padding(
      padding: EdgeInsets.fromLTRB(l, t, r, b),
      child: TextField(
        cursorHeight: 20,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: GoogleFonts.lato(
                fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              
              )
              ),
      ));
}

Widget _textFieldsContainer(context){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _paddedTextField(context, 'Full Name', 0, 0, 0, 0),
        _paddedTextField(context, 'e-mail id', 0, 30, 0, 0),
        _paddedTextField(context, 'Password', 0, 30, 0, 0),
        _paddedTextField(context, 'Conform Password', 0, 30, 0, 0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 27, 0, 0),
            child: Text(
                'Sign Up',
                style:
                GoogleFonts.montserrat(fontSize: 19, color: Colors.black)
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 10, 0),
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    iconSize: 35,
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {Navigator.pushNamed(context, 'homePage');},
                  ))),
        ]),
      ],
    ),
    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: const EdgeInsets.fromLTRB(20, 40, 20, 30),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
                    Color.fromRGBO(247, 206, 104, 1),
                    Color.fromRGBO(251, 171, 126, 1),

        ])),
  );
}

Widget _registrationScrollView(context,top) {
  return SingleChildScrollView(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * top),
    child: Column(
      children: [
        _textFieldsContainer(context),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,3,30,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Have an account?',style: GoogleFonts.montserrat(
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
        )
      ],
    )
  );
}