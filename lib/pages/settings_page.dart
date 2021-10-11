import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w500,),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: () {Navigator.pop(context);},),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart_outlined),onPressed: () {},)
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          _setting(context,"Push Notification","Notifitations on order status"),
          _setting(context,"SMS Notification","+91 7338965354"),
          _setting(context,"Email Notification","abc@gmail.com"),
          const SizedBox(height:10),
          Padding(padding: const EdgeInsets.only(left: 5,right: 20),child:_languageDropDown(context)),
          const Divider(),
        ],
        ),
    );
  }
}
Widget _setting(context,name,desc){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Padding(padding: const EdgeInsets.only(left:15),child: Text(name,style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w500),),),
            Switch(value: true, onChanged: (b){},activeColor: const Color.fromARGB(255,243,111,19),)
        ],
      ),
      Padding(padding: const EdgeInsets.only(top:0,left: 16),child: Text(desc,style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w300),),),
      const Divider()
    ],);
}

Widget _languageDropDown(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Padding(padding: const EdgeInsets.only(left:15),child: Text("Language",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w500),),),
    DropdownButton(
      underline: Container(color: const Color.fromARGB(255,243,111,19),height: 2,),
      value: "English(US)",
      items: <String>['English(US)', 'English(UK)', 'Hindi', 'Telugu','Tamil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (s){},
      )
  ],);
}