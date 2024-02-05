import 'package:flutter/material.dart';

class MyTheme{
  
  static Color primaryLightColor=Color(0xff39A552);
  static Color whiteColor= Color(0xffffffff);
  static Color redColor= Color(0xffC91C22);
  static Color darkblueColor= Color(0xff003E90);
  static Color pinkColor= Color(0xffED1E79);
  static Color brownColor= Color(0xffCF7E48);
  static Color blueColor= Color(0xff4882CF);
  static Color yellowColor= Color(0xffF2D352);
  static Color greycolor=Color(0xff4F5A69);
  static Color blackColor=Color(0xff303030);

  static ThemeData lightTheme= ThemeData(
   primaryColor: primaryLightColor,
   textTheme: TextTheme(
     headline1: TextStyle(
       color: whiteColor,
       fontSize: 22,
       fontWeight: FontWeight.bold,
     ),
     headline2: TextStyle(
       color: blackColor,
       fontSize: 20,
       fontWeight: FontWeight.bold,
     ),
     subtitle1: TextStyle(
       color: greycolor,
       fontSize: 22,
       fontWeight: FontWeight.bold,
     )
   ),

    appBarTheme: AppBarTheme(
      backgroundColor: primaryLightColor,
      elevation: 0,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        )
      )
    )
 );



}