


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secure_spy/screen/detailsaddingpage.dart';
import 'package:secure_spy/screen/profilepage.dart';
import 'package:secure_spy/screen/registeringpage.dart';
import 'package:secure_spy/screen/viewpage.dart';


void main()=> runApp(detailapp());

class detailapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/registeringpage",
      routes: {
        "/registeringpage":(context)=> securespy(),
        "/detailsaddingpage":(context)=> securespytwo(),
        "/profilepage":(context)=> securespythree(),
        "/viewpage":(context)=> securespyfour(),
      },
    );
  }
}





