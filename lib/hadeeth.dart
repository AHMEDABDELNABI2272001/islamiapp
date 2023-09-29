

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newapp2eslami/itemhadeethdetails.dart';

class Hadeethtab extends StatefulWidget {
  @override
  _HadeethtabState createState() => _HadeethtabState();
}

class _HadeethtabState extends State<Hadeethtab> {
  List<Hadeth>hadethlines=[];

  @override
  Widget build(BuildContext context) {
    if(hadethlines.isEmpty){
      loadhadethfie();
    }

    return Column(

      children: [
        Center(
          child: Image.asset('assets/images/ahadeth_image.png'),
        ),
        Divider(
          color: Theme
              .of(context)
              .primaryColor,
          thickness: 3,
        ),
        Text(AppLocalizations.of(context)!.alahadeth,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        Divider(
          color: Theme
              .of(context)
              .primaryColor,
          thickness: 3,
        ),
        hadethlines.isEmpty?
            Center(child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,

            ),)
         :

        Expanded(child: ListView.separated(


          separatorBuilder: (context,index){
            return  Divider(
              color: Theme
                  .of(context)
                  .primaryColor,
              thickness: 3,
            );
          },
          itemBuilder: (context, index) {
          return Itemhadethdetails(hadeth: hadethlines[index]);
        }, itemCount: hadethlines.length,))

      ],
    );
  }

  void loadhadethfie()async {
    String hadethcontent = await rootBundle.loadString(
        "assets/files/ahadeth.txt");
    List<String> ahadethlist = hadethcontent.split("#");
    for (int i = 0; i < ahadethlist.length; i++) {


      List<String>ahadethlines=ahadethlist[i].trim().split("\n");
      String title=ahadethlines.removeAt(0);
     String content= ahadethlines.join('\n');
      Hadeth hadeeth=Hadeth(title: title, content: content);
      hadethlines.add(hadeeth);
      setState(() {

      });

    }
  }
}
class Hadeth{

  String title;
  String content;
  Hadeth({required this.title,required this.content});
}