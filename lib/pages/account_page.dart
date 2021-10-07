import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        _profilePic(context),
        _name(context,"Vision"),
        _verificationContainer(context),
        _myBox(context, "Edit Profile"),
        _myBox(context, "Your Orders"),
        _myBox(context, "Your Offers"),
        _myBox(context, "Wish List"),
        _myBox(context, "Manage Address"),
        _myBox(context, "Payment Methods"),
        _myBox(context, "Settings"),

      ],
    );     
  }
}

Widget _profilePic(context){
  return Container(
    margin: const EdgeInsets.only(top:35),
          padding: const EdgeInsets.all(65),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 4),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4
              )
            ],
            color: Colors.black,
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage("assets/a4.png",),
              fit: BoxFit.contain
              )
          ),
        );
}

Widget _name(context,name){
  return Padding(padding: const EdgeInsets.only(top:10,bottom: 10),
  child: Text(name,style: GoogleFonts.lato(fontSize: 27,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),);
}

Widget _verificationContainer(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(15,10,15,10),
    padding: const EdgeInsets.fromLTRB(20,15,20,15),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400,width: 1,)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding : const EdgeInsets.only(bottom: 10),child: Text("Please Verify your email or number",style: GoogleFonts.lato(fontSize: 18,letterSpacing:0.5 ,fontWeight: FontWeight.w400),),),
        Padding(padding : const EdgeInsets.only(bottom: 15),child: Text("Get new Offers",style: GoogleFonts.lato(fontSize: 16,letterSpacing: 0.5),),),
        Stack(
          alignment: Alignment.centerRight,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "+917338965354",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),  
                  hintStyle: GoogleFonts.lato(fontWeight: FontWeight.w500,color: Colors.black)
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255,243,111,19),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: TextButton(
                  style: TextButton.styleFrom(padding: const EdgeInsets.fromLTRB(25,19,25,19)),
                  onPressed: (){},
                  child: Text("Verify Now",style: GoogleFonts.lato(fontSize: 16,color: Colors.white),),
                  ),
              )
            ]
        )
      ]
    )
  );
}

Widget _myBox(context,name){
  return GestureDetector(
    onTap: (){},
    child: Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(15,10,15,10),
      decoration: BoxDecoration(
        border: Border.all(
          color : Colors.grey.shade400,
          width: 1
        ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: const EdgeInsets.only(),child: Text(name,style: GoogleFonts.lato(fontSize:18,fontWeight: FontWeight.w700),),),
        const Icon(Icons.arrow_forward_ios)
    ],),
  )
  );
}



