import 'package:flutter/material.dart';

import '../../designs/glassmorphism.dart';

class Tablet_scaffold extends StatefulWidget {
  const Tablet_scaffold({Key? key}) : super(key: key);

  @override
  State<Tablet_scaffold> createState() => _Tablet_scaffoldState();
}

class _Tablet_scaffoldState extends State<Tablet_scaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("B i t v e s t  F o r e x  I n v e s t m e n t",style: TextStyle(color: Colors.white70),),
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
              background: Column(
                children: [
                  SizedBox(height: 50,),
                  DashBoard(),
                ],
              ),
            ),
          ),
          SliverFixedExtentList(delegate: SliverChildListDelegate(
              [
                Card(),
                Card(),
                Card(),
                Card(),
                Card(),
                Card(),
                Card(),
                Card(),

              ]
          ), itemExtent: 200)
        ],
      ),
    );
  }
  Widget DashBoard(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      color: Colors.indigo,child: Column(
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
      colors: Colors.transparent,
      width: 290,
      child: Column(children: [
        Row(children: [
          Text("Lorem Bank",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          Image.asset("assets/masterlogo.png",scale: 1,height: 25,width: 32,fit: BoxFit.fill,)
        ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
        SizedBox(height: 70,),
        Text("**** **** **** 9876",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("QClay Design",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
            RotatedBox(quarterTurns: 45,child: Icon(Icons.wifi,color: Colors.white,))
          ],
        ),

      ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,),
      padding: EdgeInsets.all(16),margin: EdgeInsets.all(8),radius: 30,
    );
  }
}
