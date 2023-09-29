import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Suradetails extends StatefulWidget {
  static const String routename='surasetails';

  @override
  _SuradetailsState createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {
  List<String>verse=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Suradetailsargs;
    loadfile(args.index);
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

            title: Text('${args.name}',style: TextStyle(color: Color(0xff242424),fontSize: 30,fontWeight: FontWeight.bold),),

          ),
          body: ListView.separated(

            separatorBuilder: (context,index){

              return Divider(
                thickness: 3,
                color: Theme.of(context).primaryColor,
              );
            },

            itemBuilder: (context,index){


              return Text(verse[index],style: TextStyle(color: Color(0xff242424),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,);

            },itemCount: verse.length,
          ),



        ));
  }

  void loadfile(int index)async{
    String content= await  rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>lines=content.split('/n');
    verse=lines;

    setState(() {

    });
  }
}
class Suradetailsargs{

  String name;
  int index;
  Suradetailsargs({required this.name,required this.index});


}














































