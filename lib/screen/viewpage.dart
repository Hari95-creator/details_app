import 'package:flutter/material.dart';
import 'package:secure_spy/notifer/detail_notifier.dart';
import 'package:provider/provider.dart';
import 'package:secure_spy/model/details.dart';
import 'package:intl/intl.dart';

class securespyfour extends StatefulWidget {
  @override
  _securespyfourState createState() => _securespyfourState();
}

class _securespyfourState extends State<securespyfour> {
  @override
  Widget build(BuildContext context) {

    DetailNotifier detailNotifier = Provider.of<DetailNotifier>(context);
    DateTime myDateTime = DateTime.parse(detailNotifier.currentUser.dob.toDate().toString());
    String formattedDateTime = DateFormat('dd-MM-yyyy').format(myDateTime);

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
                    backgroundImage:NetworkImage(detailNotifier.currentUser.imageurl),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 90.0,
                  color: Colors.black,
                ),
                Text(
                  "Name",
                  style:TextStyle(
                      color:Colors.black,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  detailNotifier.currentUser.name,
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
                  "Place",
                  style:TextStyle(
                      color:Colors.black,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  detailNotifier.currentUser.place,
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
                  formattedDateTime,
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
                  "Phone",
                  style:TextStyle(
                      color:Colors.black,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  detailNotifier.currentUser.phone,
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