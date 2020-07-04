import 'package:flutter/material.dart';

class securespyfour extends StatefulWidget {
  @override
  _securespyfourState createState() => _securespyfourState();
}

class _securespyfourState extends State<securespyfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title:Text("Secure Id",
          style: TextStyle(
            fontFamily:"nasa",
          ),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation:0.0,

      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),

          child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/hi.png"),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 90.0,
                  color: Colors.black,
                ),
                Text(
                  "NAME",
                  style:TextStyle(
                      color:Colors.black,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "Anonymus",
                  style:TextStyle(
                      color:Colors.white54,
                      letterSpacing: 2.0,
                      fontSize:28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  "place",
                  style:TextStyle(
                      color:Colors.black,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "No mans Land",
                  style:TextStyle(
                      color:Colors.white54,
                      letterSpacing: 2.0,
                      fontSize:28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  "Date of Birth",
                  style:TextStyle(
                      color:Colors.black,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  "01/01/2020",
                  style:TextStyle(
                      color:Colors.white54,
                      letterSpacing: 2.0,
                      fontSize:28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:"nasa"
                  ),
                ),

              ]
          )
      ),

    );
  }
}