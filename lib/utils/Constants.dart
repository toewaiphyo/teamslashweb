import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Constants {
  // Constants._();

  //Customer and PartnerShip list
  static List<String> customerImgList=[
"assets/img/uni_pharma.png",
"assets/img/vital_tech.png",
"assets/img/taw_win.png",
  ];

  static List<String> customerList=[
    "Uni Pharmacy",
    "Vital Tech",
    "Taw Win Pharmacy",
  ];

  static List<String> customerAddress=[
    "",
    "",
    "",
  ];




  static Color primaryColor = HexColor("#7303C0");
  static Color textColor = HexColor("#03001E");

  static double titleSize = 55;
  static double subTitleSize = 45;
  static double normalSize = 20;

  static String font = 'Avenir';

  //Text Style
  static TextStyle titleStyle = new TextStyle(
      fontSize: titleSize,
      fontFamily: font,
      color: textColor,
      fontWeight: FontWeight.w900);

  static TextStyle buttonTextStyle = new TextStyle(
      fontSize: normalSize,
      fontFamily: font,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  static TextStyle normalStyle = new TextStyle(
      fontSize: normalSize,
      fontFamily: font,
      color: textColor,
      fontWeight: FontWeight.w100);

  static TextStyle specialTitleStyle = new TextStyle(
      fontSize: titleSize,
      fontFamily: font,
      fontWeight: FontWeight.w900,
      foreground: Paint()..shader = specialGradient);

   TextStyle subTitleStyle = new TextStyle(
      fontSize: subTitleSize,
      fontFamily: font,
      fontWeight: FontWeight.w900,
      foreground: Paint()..shader = subTitleGradient);

  static Shader subTitleGradient = LinearGradient(
    colors: <Color>[
      HexColor("#780BC3"),
      HexColor("#CF8BF3"),
      HexColor("#EC38BC"),
    ],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 1100, 10.0),
  );


  static Shader specialGradient = LinearGradient(
    colors: <Color>[
      textColor,
      HexColor("#7303C0"),
      HexColor("#EC38BC"),
      HexColor("#F73B3B")
    ],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 500, 300.0),
  );

 static LinearGradient buttonGradient= LinearGradient(
   begin: Alignment.centerLeft,
     end: Alignment.centerRight,
     stops: [
       0.1,
       1.3,
     ],
     colors:<Color>[
    HexColor("#EC38BC"),
    HexColor("#7303C0"),
  ] );

  static LinearGradient buttonHoverGradient= LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [
        0.1,
        1.3,
      ],
      colors:<Color>[
        HexColor("#EFB3E7"),
        HexColor("#A559D5"),
      ] );



  static Gradient underlineGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
     textColor,
     HexColor("#7303C0"),
     HexColor("#EC38BC"),
     HexColor("#F73B3B")
    ],
  );

}
