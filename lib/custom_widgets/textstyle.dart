
import 'package:flutter/material.dart';


class DestinyText extends Text {
  String data;
  Color? color;
   FontWeight? fontWeight;
   double? size;
   String? fontFamily;

  DestinyText({
  required  this.data,
    this.color,
     this.fontWeight,
    this.size,
    this.fontFamily,
  })  : 
  //assert(color != null && fontWeight != null),
        super(
          data,
          style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: size,
            fontFamily: fontFamily,
          ),
        );
}