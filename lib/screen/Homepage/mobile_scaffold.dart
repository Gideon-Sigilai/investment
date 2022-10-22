import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../designs/glassmorphism.dart';
import 'extras/account.dart';
import 'extras/cart.dart';
import 'extras/search.dart';
import 'extras/settings.dart';


class Mobile_scaffold extends StatefulWidget {
  const Mobile_scaffold({Key? key}) : super(key: key);

  @override
  State<Mobile_scaffold> createState() => _mobile_scaffoldState();
}

class _mobile_scaffoldState extends State<Mobile_scaffold> {

  var Screens = [
    Home(),
    Cart(),
    Search(),
    Account(),
    Settings(),
  ];
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: IndexedStack(
        index: state,
        children: Screens,
      ),
      bottomNavigationBar: GNav(
        onTabChange: (index){setState(() {
          state = index;
        });},
        padding: const EdgeInsets.all(15),
        gap: 8,

        selectedIndex: 0,
        backgroundColor: Colors.grey.shade200,
        activeColor: Colors.black,
        rippleColor: Colors.yellow,

        tabBackgroundColor: const Color(0xffdedede),

        tabs: const [
          GButton(icon: Icons.dashboard_rounded, text: "Home"),
          GButton(icon: Icons.shopping_cart_outlined, text: "Cart"),
          GButton(icon: Icons.search_sharp, text: "Search"),
          GButton(icon: Icons.account_balance_outlined, text: "Account"),
          GButton(icon: Icons.settings_applications, text: "Settings"),
        ],),
      floatingActionButton: state == 1 ? FloatingActionButton(onPressed: (){

      },child: Icon(Icons.shopping_cart_outlined),backgroundColor: Colors.orange,) :
      null

    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(

          title: Text("Bitvest forex investment",style: TextStyle(fontSize: 16,color: Colors.white70),),
          backgroundColor: Colors.indigo,
          elevation: 0,
          leading: Icon(Icons.sort,),
          actions: [
            GlassMorphism(child: Row(children: [
              Icon(Icons.ios_share,color: Colors.black,size: 18,),
              SizedBox(width: 12,),
              Icon(Icons.more_horiz_sharp,color: Colors.black,size: 18,)
            ],),
              padding: EdgeInsets.all(8),
              blur: 12,
              margin: EdgeInsets.all(8),
              opacity: 0.5,
              radius: 30,

            )
          ],
          pinned: true,
          floating: true,
          expandedHeight: 400,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: Column(
              children: [
                SizedBox(height: 50,),
                DashBoard(),
              ],
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(
            [
              Account(),
              SizedBox(height: 30,),
              Text("Transactions",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              SingleChildScrollView(primary: false,child: ListView(children: [
                Transactions("Food & Beverages", 20, false, "Food"),
                Transactions("Shopping", 20, false, "Food"),
                Transactions("Salary Income", 20, true, "Food"),
                Transactions("Rent", 20, false, "Food"),
                Transactions("Gas Money", 20, false, "Food"),
                Transactions("Grocery", 20, false, "Food"),
                Transactions("Food & Beverages", 20, false, "Food"),
                Transactions("Food & Beverages", 20, false, "Food"),
              ],shrinkWrap: true,primary: false,),)
            ]
        ),)
      ],
    );
  }
  Widget Transactions(String name, int Cost, bool income, String Category) {
    if (income == true){
      return Container(
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(6),

        child: Row(children: [
          Expanded(flex: 0,child: CircleAvatar(child: Icon(Icons.arrow_upward,color: Colors.green,),backgroundColor: Colors.grey.shade200,)),
          SizedBox(width: 12,),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                Text(Category,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
              ],
            ),
          ),
          Expanded(flex: 0,child: Text("+" + Cost.toString(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),))
        ],),decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(7)
      ),);
    }else{
      return Container(
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(6),

        child: Row(children: [
          Expanded(flex: 0,child: CircleAvatar(child: Icon(Icons.arrow_downward,color: Colors.red,),backgroundColor: Colors.grey.shade200,)),
          SizedBox(width: 12,),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                Text(Category,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
              ],
            ),
          ),
          Expanded(flex: 0,child: Text("-" + Cost.toString(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),))
        ],),decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(7)
      ),);
    }
  }
  Widget DashBoard(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      color: Colors.transparent,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Your Portfolio",style: TextStyle(color: Colors.white,fontSize: 12),),
        SizedBox(height: 40,),
        Row(
          children: [
            Text("\$ 4000",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white70),),
            SizedBox(width: 10,),
            Icon(Icons.remove_red_eye,color: Colors.white60,)
          ],
        ),
        SizedBox(height: 10,),
        Card(),
      ],),);

  }
  Widget Card(){
    return GlassMorphism(
      gradient: LinearGradient(colors: [Colors.transparent,Colors.white,Colors.transparent],begin: Alignment.topLeft,end: Alignment.bottomRight),
      width: 290,
      child: Column(children: [
        Row(children: [
          Text("Sawe Bank",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          Image.asset("assets/masterlogo.png",scale: 1,height: 25,width: 40,fit: BoxFit.fill,)
        ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
        SizedBox(height: 70,),
        Text("**** **** **** 9876",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Gidi Designs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
            RotatedBox(quarterTurns: 45,child: Icon(Icons.wifi,color: Colors.white,))
          ],
        ),

      ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,),
      padding: EdgeInsets.all(16),margin: EdgeInsets.all(8),radius: 30,
    );
  }
  Widget Account(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text("Activities",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
        Row(children: [
          InkWell(
            onTap: (){},
            child: Container(child: Column(children: [
              Icon(Icons.account_box,size: 40,),
              SizedBox(height:7,),
              Text("Account",style: TextStyle(fontWeight: FontWeight.w600),)
            ],),padding: EdgeInsets.all(8),margin: EdgeInsets.all(6),decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(offset: Offset(2,2),color: Colors.grey.shade400,blurRadius: 1),
                  BoxShadow(offset: Offset(-2,-2),color: Colors.grey.shade100,blurRadius: 15)
                ]
            ),height: 100,width: 100,),
          ),
          InkWell(
            onTap: (){},
            child: Container(child: Column(children: [
              Icon(Icons.privacy_tip_outlined,size: 40,),
              SizedBox(height:7,),
              Text("Privacy",style: TextStyle(fontWeight: FontWeight.w600),)
            ],),padding: EdgeInsets.all(8),margin: EdgeInsets.all(6),decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(offset: Offset(2,2),color: Colors.grey.shade400,blurRadius: 1),
                  BoxShadow(offset: Offset(-2,-2),color: Colors.grey.shade100,blurRadius: 15)
                ]
            ),height: 100,width: 100,),
          ),
          InkWell(
            onTap: (){},
            child: Container(child: Column(children: [
              Icon(Icons.help_center_outlined,size: 40,),
              SizedBox(height:7,),
              Text("Help",style: TextStyle(fontWeight: FontWeight.w600),)
            ],),padding: EdgeInsets.all(8),margin: EdgeInsets.all(6),decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(offset: Offset(2,2),color: Colors.grey.shade400,blurRadius: 1),
                  BoxShadow(offset: Offset(-2,-2),color: Colors.grey.shade100,blurRadius: 15)
                ]
            ),height: 100,width: 100,),
          ),
        ],),
      ],
    );
  }
}








