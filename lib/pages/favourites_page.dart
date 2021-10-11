import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({ Key? key }) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  static const wishList = <int,List<dynamic>>{
    0 :["Red Dress","\$16","assets/9.jpeg"],
    1 :["White Trendy Shoes","\$12","assets/5.jpeg"],
    2 :["Black Classy Shoes","\$15","assets/6.jpeg"],
    3 :["Black Simple Dress","\$9","assets/7.jpeg"],
    4 :["Ganesha Fountain","\$10","assets/8.jpeg"],
  };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,index) 
      {return Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(right: 10),child :Image.asset(wishList[index%5]![2],fit: BoxFit.contain,scale: 1.37,),),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.only(left: 10,bottom: 7),child: Text(wishList[index%5]![0],style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700),)),
                Padding(padding: const EdgeInsets.only(left: 10,bottom: 30),child: Text(wishList[index%5]![1],style: GoogleFonts.lato(fontSize: 20,color:  const Color.fromARGB(255,243,111,19),fontWeight: FontWeight.w700),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(children: [const Icon(Icons.add_shopping_cart_outlined,size: 17,),Text("Move to Cart",style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w400),)],),
                    const Padding(padding: EdgeInsets.only(right: 15)),
                    Row(children: [const Icon(Icons.delete_outline,size: 20,),Text("Remove",style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w400),)],)
                ],
                )
              ],
            )
          ],),
      );} );
  }
}