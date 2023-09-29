
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp2eslami/languagebutton.dart';
import 'package:newapp2eslami/provider/app_config_provider.dart';
import 'package:newapp2eslami/themebottomsheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settingtabs extends StatefulWidget {


  @override
  _SettingtabsState createState() => _SettingtabsState();
}

class _SettingtabsState extends State<Settingtabs> {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Appconfigprovider>(context);
   return Container(
     margin: EdgeInsets.all(18),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
     Container(margin: EdgeInsets.only(top: 33),
       child:  Text(AppLocalizations.of(context)!.language,style: TextStyle(fontSize: 25),),
     ),
         SizedBox(height: 15,),
         Container(
           padding: EdgeInsets.all(8),
           decoration: BoxDecoration(
             color: Theme.of(context).primaryColor,
             borderRadius: BorderRadius.circular(18)
           ),
           child:

           InkWell(
             onTap: (){

               showlanguagebottomsheet();
             },
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
          Text(
            provider.applanguage=='en'?


            AppLocalizations.of(context)!.english:
    AppLocalizations.of(context)!.arabic,


            style: TextStyle(fontSize: 20),),
                 Icon(Icons.arrow_drop_down)


               ],


             ),
           ),
         ),
         SizedBox(height: 15,),
         Container(margin: EdgeInsets.only(top: 33),
           child:  Text(AppLocalizations.of(context)!.theme,style: TextStyle(fontSize: 25),),
         ),
         Container(
           padding: EdgeInsets.all(8),
           decoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               borderRadius: BorderRadius.circular(18)
           ),
           child:

           InkWell(
             onTap: (){

              showthemingbottomsheet();
             },
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   provider.isdarkmode()?


                   AppLocalizations.of(context)!.dark:
                   AppLocalizations.of(context)!.light,


                   style: TextStyle(fontSize: 20),),
                 Icon(Icons.arrow_drop_down)


               ],


             ),
           ),
         ),



       ],
     ),
   );
  }

  void showlanguagebottomsheet(){

showModalBottomSheet(
    context: context,
    builder: (context)=> Languagebutton()
);
}
void showthemingbottomsheet(){

showModalBottomSheet(context: context, builder: (context)=>Themebottomsheet());

}
}
