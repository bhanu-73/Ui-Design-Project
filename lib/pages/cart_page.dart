import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            _product(context, "Red Dress", "\$15", "assets/9.jpeg"),
            _product(context, "White Trendy Shoes", "\$11", "assets/5.jpeg"),
            _product(context, "Black Classy Shoes", "\$13", "assets/6.jpeg"),
           _paymentDetails(context),
            const SizedBox(height: 70,) 
          ],
        ),
        _bottomBox(context)
      ],
    );
  }
}

Widget _product(context,name,price,image){
  return Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(right: 10),child :Image.asset(image,fit: BoxFit.contain,scale: 1.3,),),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.only(left: 10,bottom: 7),child: Text(name,style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700),)),
                Padding(padding: const EdgeInsets.only(left:10,top: 3,bottom: 5),child:Row(children: [const Icon(Icons.task_alt,size: 20,),Text("M",style: GoogleFonts.lato(fontSize:13))],),),
                Padding(padding: const EdgeInsets.only(left: 10,bottom: 25),child: Text(price,style: GoogleFonts.lato(fontSize: 20,color:  const Color.fromARGB(255,243,111,19),fontWeight: FontWeight.w700),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(children: [const Icon(Icons.bookmark_outline,size: 17,),Text("Save For Later",style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w400),)],),
                    const Padding(padding: EdgeInsets.only(right: 15)),
                    Row(children: [const Icon(Icons.delete_outline,size: 20,),Text("Remove",style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w400),)],)
                ],
                )
              ],
            )
          ],),
      );
}

Widget _paymentDetails(context){
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(bottom: 10,left:10,top:10),child: Text("Payment Detail",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700),),),
        Padding(padding: const EdgeInsets.only(bottom: 10,left: 10),child: Text("Offers - No offers at the moment.",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.grey),),),
        Padding(padding: const EdgeInsets.only(bottom: 10,left:10),child: Text("Available Payment Methods",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700),),),
        Padding(padding: const EdgeInsets.only(bottom: 10,left: 10),child: Text("UPI\n\nDebit Card\n\nCOD",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.green),),),
      ],
    ),
  );
}

Widget _bottomBox(context){
  return Align(
    alignment: Alignment.bottomCenter,
    child: Row(children: [
      Container(
        color: Colors.white,
        height: 70,
        width: MediaQuery.of(context).size.width*0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(padding: const EdgeInsets.only(bottom: 5),child: Text("\$70",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700),),),
          Padding(padding: const EdgeInsets.only(),child: Text("See Price Detail",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w400),),)
        ],),
      ),
        
        Container(
          height: 70,
        width: MediaQuery.of(context).size.width*0.5,
          color:const Color.fromARGB(255,243,111,19),
        child: TextButton(
          child: Text("Continue",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
          style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 10,bottom: 10)),
          onPressed: (){Navigator.pushNamed(context, 'notImplemented');},
        ),
      )
    ],),
  );
}