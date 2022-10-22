import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _cartState();
}

class _cartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {

    int itemsCount = 0;

    return SafeArea(child: Column(children: [
      AppBar(
        backgroundColor: Colors.orange,
        leading: Icon(Icons.shopping_cart_outlined),
        title: Text("C a r t"),
        centerTitle: true,
        elevation: 0,
      ),
      Container(
        height: 40,
        color: Colors.grey.shade300,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Text("Your cart is :"),
          Text(itemsCount.toString()),
        ],),
      ),
      Expanded(child: SingleChildScrollView(primary: false,child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          data(100,550),
          data(200,1000),
          data(300,1550),
          data(400,1800),
          data(500,2050),
          data(600,2300),
          data(700,2650),
          data(800,2900),
          data(900,3150),
          data(1000,3500),
        ],
      ),))


    ],));
  }
  Widget data(int cash,int profit){
    return Container(child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text("Invest " + "\$" + cash.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.favorite_border,color: Colors.orange,size: 22,))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Profit " + "\$" + profit.toString()),
          MaterialButton(onPressed: (){},child: Text("Add to Cart",style: TextStyle(color: Colors.white),),color: Colors.orange,)
        ],
      ),
    ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(offset: Offset(2,2),color: Colors.grey.shade300,blurRadius: 12),
          BoxShadow(offset: Offset(-2,-2),color: Colors.grey.shade100,blurRadius: 12)
        ]
      ),
    );
  }
}