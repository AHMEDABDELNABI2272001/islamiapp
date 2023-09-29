import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sephatab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/head_of_seb7a.png',),

            ],
          ),



          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/body_of_seb7a.png',),
            ],
          ),
          Text('عدد التسبيحات',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Group 2.png')
            ],
          ),



        ],
      ),
    );
  }
}
