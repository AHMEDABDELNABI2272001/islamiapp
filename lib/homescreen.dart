

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newapp2eslami/hadeeth.dart';
import 'package:newapp2eslami/provider/app_config_provider.dart';
import 'package:newapp2eslami/qurantab.dart';
import 'package:newapp2eslami/radio.dart';
import 'package:newapp2eslami/sepha.dart';
import 'package:newapp2eslami/settingtab.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  static const String routename='homescreen';

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Appconfigprovider>(context);
    return Stack(


     children: [
       provider.isdarkmode()?
       Image.asset('assets/images/Group 7.png',fit: BoxFit.fill,height: double.infinity,width: double.infinity,)
        :
    Image.asset('assets/images/background.png',fit: BoxFit.fill,height: double.infinity,width: double.infinity,),
       Scaffold(

           appBar: AppBar(

             title: Text(AppLocalizations.of(context)!.app_title,style: TextStyle(color: Color(0xff242424),fontSize: 30,fontWeight: FontWeight.bold),),

           ),
           bottomNavigationBar:

           Theme(

             data: Theme.of(context).copyWith(
               canvasColor: Theme.of(context).primaryColor,


             ),
             child: BottomNavigationBar(
               currentIndex: selectedindex,
               onTap: (index){
                 selectedindex=index;
                 setState(() {

                 });
               },
               items: [


                 BottomNavigationBarItem(


                     icon: ImageIcon(AssetImage('assets/images/quran.png')),
                     label: AppLocalizations.of(context)!.moshaf

                 ),
                 BottomNavigationBarItem(

                     icon: ImageIcon(AssetImage('assets/images/radio.png')),
                     label: AppLocalizations.of(context)!.radio

                 ),

                 BottomNavigationBarItem(

                     icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                     label: AppLocalizations.of(context)!.tasbeeha

                 ),
                 BottomNavigationBarItem(

                     icon: ImageIcon(AssetImage('assets/images/ahadeth_icon.png')),
                     label: AppLocalizations.of(context)!.hadeeth

                 ),
                 BottomNavigationBarItem(

                     icon: Icon(Icons.settings),
                     label: AppLocalizations.of(context)!.settings

                 ),







               ],



             ),
           ),
           body:tabs[selectedindex]

       ),

     ],




    );
  }
  List<Widget>tabs=[
    Qurantab(),Radiotab(),Sephatab(),Hadeethtab(),Settingtabs()
  ];

}
