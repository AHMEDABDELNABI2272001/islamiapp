

import 'package:flutter/material.dart';

class Mytheme{
  static Color primarylight=Color(0xffB7935F);
  static Color primarydark=Color(0xff141A2E);

  static ThemeData lightmode=ThemeData(

      primaryColor:primarylight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(

          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Color(0xff242424)
          )


      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

          showSelectedLabels: true,
          selectedItemColor: Colors.black


      )



  );
  static ThemeData darkmode=ThemeData(

      primaryColor:primarydark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(

          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Color(0xffFFFFFF)
          )


      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

          showSelectedLabels: true,
          selectedItemColor: Colors.yellow


      )



  );


}