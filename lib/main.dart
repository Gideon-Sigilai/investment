import 'package:bitvest_forex_investment/screen/Homepage.dart';
import 'package:bitvest_forex_investment/screen/test.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Homepage(),);
  }
}
