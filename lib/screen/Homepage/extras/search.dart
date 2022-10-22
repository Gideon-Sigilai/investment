import 'package:bitvest_forex_investment/designs/glassmorphism.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [
      AppBar(
        backgroundColor: Colors.green,
        title: Text("S e a r c h"),
        centerTitle: true,
        leading: Icon(Icons.search),
        actions: [
          Icon(Icons.more_vert_rounded)
        ],
      ),
      SizedBox(height: 20,),
      GlassMorphism(padding: EdgeInsets.all(5),child: CupertinoSearchTextField()),
    ],));
  }
}