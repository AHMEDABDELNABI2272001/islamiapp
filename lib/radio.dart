import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Radiotab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Image.asset('assets/images/radio_image.png'),
          Text('إذاعة القرآن الكريم',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/Group 5.png')



        ],
      ),
    );
  }
}
