
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newapp2eslami/hadethdetailsscreen.dart';
import 'package:newapp2eslami/homescreen.dart';
import 'package:newapp2eslami/itemsuraname.dart';
import 'package:newapp2eslami/provider/app_config_provider.dart';
import 'package:newapp2eslami/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(


      ChangeNotifierProvider(create:(context)=>Appconfigprovider() ,


      child: MyApp(),
      )




  );


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Appconfigprovider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routename ,
      locale: Locale(provider.applanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,


      routes: {

        Homescreen.routename:(context)=>Homescreen(),
        Suradetails.routename:(context)=>Suradetails(),
        Hadethscreen.routename:(context)=>Hadethscreen()





      },
      theme: Mytheme.lightmode,
        darkTheme:Mytheme.darkmode,
      themeMode: provider.apptheme

    );
  }
}

