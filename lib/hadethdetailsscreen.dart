

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newapp2eslami/hadeeth.dart';

class Hadethscreen extends StatefulWidget {
  static const String routename='hadethscreen';

  @override
  _HadethscreenState createState() => _HadethscreenState();
}

class _HadethscreenState extends State<Hadethscreen> {


  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;

    return  Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),fit: BoxFit.fill
          )

      ),
      child: Scaffold(

      appBar: AppBar(

      title: Text('${args.title}',style: TextStyle(color: Color(0xff242424),fontSize: 30,fontWeight: FontWeight.bold),),

    ),
      body: ListView.builder(



        itemBuilder: (context,index){


        return Text(args.content[index],style: TextStyle(color: Color(0xff242424),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,);

      },itemCount: args.content.length,
      ),



      ));
  }


}















































