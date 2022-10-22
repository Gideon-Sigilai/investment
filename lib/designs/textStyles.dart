import 'package:flutter/material.dart';


class Heading extends StatelessWidget {

  String? data;
  Color? colors;
  double? Size;
  FontWeight? weight;

   Heading({
    this.data,
    Key? key,
     this.colors,
     this.Size,
     this.weight,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data!,style: TextStyle(
      color: colors != null ? colors : Colors.black,
      fontSize: Size != null ? Size : 18,
      fontWeight: weight != null ? weight : FontWeight.w600,
    ),);
  }
}

class Heading2 extends StatelessWidget {

  String? data;
  Color? colors;
  double? Size;
  FontWeight? weight;

  Heading2({
    this.data,
    Key? key,
    this.colors,
    this.Size,
    this.weight,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data!,style: TextStyle(
      color: colors != null ? colors : Colors.black,
      fontSize: Size != null ? Size : 14,
      fontWeight: weight != null ? weight : FontWeight.w400,
    ),);
  }
}

class normal extends StatelessWidget {

  String? data;
  Color? colors;
  double? size;
  FontWeight? weight;

  normal({
    this.data,
    Key? key,
    this.colors,
    this.size,
    this.weight,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data!,style: TextStyle(
      color: colors != null ? colors : Colors.black,
      fontSize: size != null ? size : 12,
      fontWeight: weight != null ? weight : FontWeight.normal,
    ),);
  }
}

