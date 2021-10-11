import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'favourites_page.dart';
import 'account_page.dart';
import 'cart_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedpage = 0;  
    static const pages = [HomePage(),FavouritesPage(),CartPage(),AccountPage()];
    void _changePage(int index){
      setState(() {
        _selectedpage = index;
      });
    }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(247),
      appBar: _appBar(context),
      bottomNavigationBar: _bNavBar(context,_selectedpage,_changePage),
      body: pages[_selectedpage]
    );
  }
}

PreferredSizeWidget _appBar(context){
  return AppBar(
    title: Text("Home",style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w800),),
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.menu,),
      onPressed: (){},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: (){Navigator.pushNamed(context, 'notImplemented');},
        )
      ],
    );
}

Widget _bNavBar(context,selectedIndex,onTapFunction){
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Wish List"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Account"),
    ],
    currentIndex: selectedIndex,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedIconTheme: const IconThemeData(size: 30),
    unselectedIconTheme: const IconThemeData(size: 27),
    unselectedItemColor: const Color.fromARGB(255,115,115,115),
    selectedItemColor: const Color.fromARGB(255,243,111,19),
    onTap: (i){onTapFunction(i);},
   
    );
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: [
          Image.asset("assets/0.jpeg",fit: BoxFit.fill,height: MediaQuery.of(context).size.height*0.27,),
          _categoiesContainer(context),
        Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: const EdgeInsets.only(left: 15,bottom: 10),child:Text("New Arrivals",style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700),)),
          Padding(padding: const EdgeInsets.only(right: 15,bottom: 10),child:TextButton(onPressed: (){Navigator.pushNamed(context, 'notImplemented');},child: Text("View All",style: GoogleFonts.lato(fontSize: 20,color: const Color.fromARGB(255,115,115,115)),))),
        ],
      ),
          _newArrivalsContainer(context),
          Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: const EdgeInsets.only(left: 15,bottom: 10),child:Text("Featured Products",style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700),)),
          Padding(padding: const EdgeInsets.only(right: 15,bottom: 10),child:TextButton(onPressed:(){Navigator.pushNamed(context, 'notImplemented');},child:Text("View All",style: GoogleFonts.lato(fontSize: 20,color: const Color.fromARGB(255,115,115,115)),))),
        ],
      ),
          _featuredProductsContainer(context)
        ],
      );
  }
}
 

Widget _categoiesContainer(context){
  final categories = <int,List<dynamic>>{
    0: ["Men", const Color.fromARGB(255,246,68,84),Icons.male_outlined],
    1: ["Women",const Color.fromARGB(255,49,183,198),Icons.female_outlined],
    2 : ["Baby & Kids",const Color.fromARGB(255,255,214,115),Icons.child_care_outlined],
    3: ["Bags",const Color.fromARGB(255,12,90,146),Icons.backpack_outlined],
    4: ["Deodrants",const Color.fromARGB(255,60,166,154),FontAwesomeIcons.airFreshener],
  };
  return SizedBox(
    height: MediaQuery.of(context).size.height*0.15,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.only(top:20,left: 15,bottom: 10,right: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: categories[index%5]![1],
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(icon: Icon(categories[index%5]![2]),onPressed: (){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                child :Text(categories[index%5]![0],style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w600,color: categories[index%5]![1]),)
                ),
          ],
          )
          );
        }
      ),
    );
}

Widget _newArrivalsContainer(context){
  final productsMap = {
    0 : ["Red Dress","\$15","assets/1.jpeg"],
    1 : ["Vamsi","\$28","assets/2.jpeg"],
    2 : ["Idalia","\$16","assets/3.jpeg"]
  };
  return _listViewofProducts(context,productsMap,0.38);
}

Widget _featuredProductsContainer(context){
 final productsMap = {
    0 : ["Idalia","\$14","assets/3.jpeg"],
    1 : ["Red Black\nRunning\nShoes","\$16","assets/4.jpeg"],
    2 : ["Red Dress","\$19","assets/1.jpeg"]
  };
  return _listViewofProducts(context, productsMap,0.44);
}

Widget _listViewofProducts(context,map,percent){
  return SizedBox(
    height: MediaQuery.of(context).size.height*percent,
    width: double.infinity,
    child: ListView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
          return _productContainer(context, map[index%map.length]![0],map[index%map.length]![1],map[index%map.length]![2]);
        },),
  );
}

Widget _productContainer(context,name,price,path){
  return Container(
    width: MediaQuery.of(context).size.width*0.4,
    margin: const EdgeInsets.all(10),
          child: Column(children: [
            Image.asset(path,fit: BoxFit.contain,scale: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: const EdgeInsets.only(right: 0,top: 15),child:Text(name,style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700,),),),
                Padding(padding: const EdgeInsets.only(left: 0,top: 15),child :Text(price,style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.w700,color: const Color.fromARGB(255,243,111,19),),)),
              ],
            ),
          ],
          ),
        );
}

