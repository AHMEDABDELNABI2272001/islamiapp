import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appconfigprovider extends ChangeNotifier{
String applanguage='en';
ThemeMode apptheme=ThemeMode.light;
void changelanguage(String newlanguage){

  if(applanguage==newlanguage){


    return;
  }
  applanguage=newlanguage;
  notifyListeners();


}
void changethememode(ThemeMode newmode){

if(apptheme==newmode){
  return;
}
apptheme=newmode;
notifyListeners();


}
bool isdarkmode(){
return apptheme==ThemeMode.dark;

}


}