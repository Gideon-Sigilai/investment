import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {

  double? blur;
  double? opacity;
  final Widget child;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  double? width;
  double? height;
  double? radius;
  Color? colors;
  BorderRadius? bradius;
  Gradient? gradient;


   GlassMorphism({
    Key? key,
    this.blur,
    this.opacity,
    this.radius,
    required this.child,
    this.padding,
    this.margin,
    this.width,
     this.height,
     this.colors,
     this.gradient,
     this.bradius,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur != null ? blur!.toDouble() : 12,sigmaY: blur != null ? blur!.toDouble() : 12),
        child: Wrap(
          children:[Container(
            height: height,
            width: width!= null ? width : null,
            margin: margin!= null ? margin : null,
            padding: padding!= null ? padding : null,
            decoration: BoxDecoration(
              gradient: gradient != null ? gradient : null,
              color: colors != null ? colors!.withOpacity(opacity != null ? opacity!.toDouble() : 0.1) : Colors.white70.withOpacity(opacity != null ? opacity!.toDouble() : 0.1) ,
              borderRadius: bradius == null ? BorderRadius.all(Radius.circular(radius != null ? radius!.toDouble() : 0)) : bradius,
              border: Border.all(
                width: 1.5,
                color: Colors.white.withOpacity(0.2)
              )
            ),
            child: Wrap(children: [child]),
          ),]
        ),
      ),

    );
  }
}
