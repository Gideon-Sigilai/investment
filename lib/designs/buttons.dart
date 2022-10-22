import 'package:flutter/material.dart';
import 'dart:ui';

class NextButton extends StatelessWidget {

  Text label;
  Icon icons;
  Color? colors;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  double? width;
  double? height;
  double? radius;
  Border? border;
  Function? ontap;


  BorderRadius? bradius;
  Gradient? gradient;

  NextButton({
    Key? key,
    required this.label,
    required this.icons,
    this.border,
    this.colors,
    this.gradient,
    this.bradius,
    this.ontap


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Container(
        constraints: BoxConstraints(
          minWidth: 100,
        ),
        height: height,
        width: width!= null ? width : null,
        margin: margin!= null ? margin : null,
        padding: padding!= null ? padding : EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: colors != null ? colors : Colors.white70,
            borderRadius: bradius == null ? BorderRadius.all(Radius.circular(radius != null ? radius!.toDouble() : 12)) : bradius,
            boxShadow: [
              BoxShadow(
                offset: Offset(-4, -4),
                color: Colors.transparent,
                spreadRadius: 1,
                blurRadius: 12,

              ),
              BoxShadow(
                offset: Offset(4, 4),
                spreadRadius: 1,
                color: colors != null ? colors!.withOpacity(0.8) : Colors.grey.shade400,
                blurRadius: 12,

              )
            ]
        ),
        child: Wrap(
          spacing: 50,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            label,
            Container(
              child: icons,
              padding: EdgeInsets.all(4),

              decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-4, -4),
                      color: Colors.white10.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 4,

                    ),
                    BoxShadow(
                      offset: Offset(4, 4),
                      spreadRadius: 1,
                      color: colors != null ? colors!.withOpacity(0.1) : Colors.grey.shade400,
                      blurRadius: 3,

                    )
                  ]
              ),
            )

          ],
        ),


      ),
    );
  }
}

class CustButton extends StatelessWidget {
  Color? colors;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  double? width;
  double? height;
  double? radius;
  Border? border;
  Widget child;
  Function? ontap;


  BorderRadius? bradius;
  Gradient? gradient;


  CustButton({
    required this.child,
    this.border,
    this.colors,
    this.gradient,
    this.bradius,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.radius,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding != null ? padding : EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colors != null ? colors : Colors.white,
        borderRadius: bradius != null ? bradius : null,
        gradient: gradient,
        border: border,
        boxShadow: [
          BoxShadow(
            offset: Offset(-4,-4),
            color: Colors.transparent.withOpacity(0.1),
            blurRadius: 7,
            spreadRadius: 1,
          ),
          BoxShadow(
            offset: Offset(4,4),
            color: colors != null ? colors!.withOpacity(0.5) : Colors.grey.shade300,
            blurRadius: 8,
            spreadRadius: 1,
          )
        ]
      ),
      child: child,
    );
  }
}

