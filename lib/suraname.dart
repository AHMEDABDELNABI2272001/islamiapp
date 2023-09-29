

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp2eslami/itemsuraname.dart';

class Suraname extends StatelessWidget {
  String name;
  int index;
  Suraname({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return

      InkWell(

        onTap: (){
          Navigator.pushNamed(context, Suradetails.routename,arguments: Suradetailsargs(name: name, index: index));
        },
        child: Text('$name'     ,style: TextStyle(
          color: Color(0xff242424),
          fontSize:25,
          fontWeight: FontWeight.bold,

        ),textAlign: TextAlign.center,),
      );
  }
}
