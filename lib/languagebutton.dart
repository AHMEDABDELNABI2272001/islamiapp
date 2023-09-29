
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp2eslami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Languagebutton extends StatefulWidget {


  @override
  _LanguagebuttonState createState() => _LanguagebuttonState();
}

class _LanguagebuttonState extends State<Languagebutton> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Appconfigprovider>(context);
    return Container(margin: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,

       children: [

         InkWell( onTap: (){
          provider.changelanguage('en');

         },
             child:provider.applanguage=='en'?
                 getselecteditemwidget(AppLocalizations.of(context)!.english)
                 :getunselecteditemwidget(AppLocalizations.of(context)!.english),

         ),


         InkWell(
           onTap: (){


             provider.changelanguage('ar');
           },
             child:provider.applanguage=='ar'?
                 getselecteditemwidget(AppLocalizations.of(context)!.arabic):
                 getunselecteditemwidget(AppLocalizations.of(context)!.arabic)

         )
       ],

      ),
    );
  }

  Widget getselecteditemwidget(String text){

    return Padding(padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(text,style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor ),),


          Icon(Icons.check)

        ],
      ),
    );
  }
  Widget getunselecteditemwidget(String text){
    return  Padding(padding: const EdgeInsets.all(8),
      child: Text(text,style: TextStyle(fontSize: 22),),
    );
  }
}
