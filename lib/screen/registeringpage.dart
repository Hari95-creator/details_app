import 'package:flutter/material.dart';

class securespy extends StatefulWidget {
  @override
  _securespyState createState() => _securespyState();
}

class _securespyState extends State<securespy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,

      appBar: AppBar(
        title: Text("Secure Id",
          style: TextStyle(
              fontFamily: "nasa",
              fontSize: 20.0,
              letterSpacing: 2.0
          ),),

        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 300.0,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text("Secure your Id",
                style: TextStyle(
                    fontFamily: "nasa",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.0
                ),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text("CLICK TO REGISTER",
                style: TextStyle(
                    fontFamily: "nasa",
                    fontSize: 20.0,
                    color: Colors.white,
                    letterSpacing:1.0
                ),),
            ),
            Container(

              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/detailsaddingpage');
                },
                child: Text("Register",
                  style: TextStyle(
                      fontFamily: "nasa",
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      letterSpacing: 2.0,
                    color:Colors.white
                  ),
                ),
                color:Colors.grey,
              ),
            )
          ],
        ),
      ),

    );
  }
}
