

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp2eslami/hadeeth.dart';
import 'package:newapp2eslami/hadethdetailsscreen.dart';

class Itemhadethdetails extends StatelessWidget {
  Hadeth hadeth;

 Itemhadethdetails({required this.hadeth});

  @override
  Widget build(BuildContext context) {

        return

          InkWell(

            onTap: (){

              Navigator.pushNamed(context, Hadethscreen.routename,arguments:hadeth );
            },

            child: Text(hadeth.title     ,style: TextStyle(
            color: Color(0xff242424),
            fontSize:25,
            fontWeight: FontWeight.bold,

        ),textAlign: TextAlign.center,),
          );

  }
}
