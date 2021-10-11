import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",style: GoogleFonts.lato(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.white,
        leading: IconButton(icon :const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
      ),
      body: ListView(
        children: [
          _profilePic(context),
          Row(children: [
            SizedBox(width: MediaQuery.of(context).size.width*0.5,child : _paddedTextField(context, "  First Name", 25, 40, 10, 0),),
            SizedBox(width: MediaQuery.of(context).size.width*0.5,child :_paddedTextField(context, "  Last Name", 10, 40, 25, 0),)
            ],),
            _paddedTextField(context, "  Gender", 25, 20, 25, 0),
            _paddedTextField(context, "  Email", 25, 20, 25, 0),
            _button1(context),
            _button2(context)
        ],
      ),
    );
  }
}
Widget _profilePic(context){
  return Container(
    height: 130,
    margin: const EdgeInsets.only(top:35),
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white,width: 4),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4
              )
            ],
            shape: BoxShape.circle,
          ),
          child: Image.asset("assets/man.png",scale: 7,)
        );
}

Widget _paddedTextField(BuildContext context,String text, double l, double t,
    double r, double b) {
  return Padding(
      padding: EdgeInsets.fromLTRB(l, t, r, b),
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: GoogleFonts.montserrat(
                fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black87,letterSpacing:0),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              
              )
              ),
      ));
}

Widget _button1(context){
  return Container(
    padding: const EdgeInsets.only(top: 1,bottom: 1),
    margin: const EdgeInsets.only(right: 25,left: 25,top:30),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255,243,111,19),
      borderRadius: BorderRadius.circular(50)
    ),
    child: TextButton(
      child: Text("Save Profile",style: GoogleFonts.montserrat(fontSize: 22,color:Colors.white,fontWeight: FontWeight.w500),),
      onPressed: (){},)
  );
}

Widget _button2(context){
  return Container(
    padding: const EdgeInsets.only(top: 1,bottom: 1),
    margin: const EdgeInsets.only(right: 25,left: 25,top:15),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255,243,111,19)),
      borderRadius: BorderRadius.circular(50)
    ),
    child: TextButton(
      child: Text("Change Password",style: GoogleFonts.montserrat(fontSize: 22,color:const Color.fromARGB(255,243,111,19),fontWeight: FontWeight.w500,),),
      onPressed: (){},)
  );
}