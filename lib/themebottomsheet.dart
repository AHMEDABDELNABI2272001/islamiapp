
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp2eslami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Themebottomsheet extends StatefulWidget {


  @override
  _ThemebottomsheetState createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Appconfigprovider>(context);
    return Container(margin: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,

       children: [

         InkWell( onTap: (){
          provider.changethememode(ThemeMode.dark);

         },
             child:provider.isdarkmode()?
                 getselecteditemwidget(AppLocalizations.of(context)!.dark)
                 :getunselecteditemwidget(AppLocalizations.of(context)!.dark),

         ),


         InkWell(
           onTap: (){


             provider.changethememode(ThemeMode.light);
           },
             child:provider.isdarkmode()?
             getunselecteditemwidget(AppLocalizations.of(context)!.light):
                 getselecteditemwidget(AppLocalizations.of(context)!.light)


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
