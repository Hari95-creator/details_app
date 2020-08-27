
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secure_spy/notifer/detail_notifier.dart';
import 'package:secure_spy/screen//detailsaddingpage.dart';
import 'package:secure_spy/screen/profilepage.dart';
import 'package:secure_spy/screen/registeringpage.dart';
import 'package:secure_spy/screen/viewpage.dart';

void main()=> runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(
      create: (context)=>DetailNotifier(),
    ),
  ],
  child:Detailapp(),
));

class Detailapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=>DetailNotifier(),
        ),
      ],
      child: MaterialApp(
          initialRoute: "/registeringpage",
          routes: {
            "/registeringpage":(context)=> securespy(),
            "/detailsaddingpage":(context)=> securespytwo(),
            "/profilepage":(context)=> securespythree(),
            "/veditpage":(context)=> securespyfour(),
            "/viewpage":(context)=> securespyfour(),
          },
        ),
    );
  }
}





