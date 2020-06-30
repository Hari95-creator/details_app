import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home:securespy() ,
));

class securespy extends StatefulWidget {
  @override
  _securespyState createState() => _securespyState();
}

class _securespyState extends State<securespy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],

      appBar:AppBar(
        title: Text("Secure Id",
        style: TextStyle(
          fontFamily: "nasa",
          fontSize: 20.0,
          letterSpacing:2.0
        ),),

        backgroundColor:Colors.grey[850],
      ),
      body:Padding(
        padding: EdgeInsets.all(10.0),
        child:ListView(
          children: <Widget>[
            Container(
              height:300.0,
              alignment: Alignment.center,
              padding:EdgeInsets.all(10.0),
              child:Text("Secure your Id",
              style: TextStyle(
                fontFamily: "nasa",
                fontWeight:FontWeight.bold,
                color:Colors.amberAccent,
                fontSize: 20.0,
                letterSpacing:2.0
              ),),
            ),
            Container(
              alignment:Alignment.center,
              padding:EdgeInsets.all(10.0),
              child:Text("click to register",
              style:TextStyle(
                fontFamily: "nasa",
                fontSize: 20.0,
                color:Colors.amberAccent
              ),),
            ),
            Container(

              alignment:Alignment.bottomCenter,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespytwo()));
                },
                child: Text("Register",
                  style: TextStyle(
                    fontFamily: "nasa",
                    fontWeight:FontWeight.bold,
                    fontSize:15.0,
                    letterSpacing:2.0
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );

  }
}
class securespytwo extends StatefulWidget {
  @override
  _securespytwoState createState() => _securespytwoState();
}

class _securespytwoState extends State<securespytwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],
      appBar: AppBar(
        title: Text("welcome to secure Id",
        style:TextStyle(
          fontFamily:"nasa"
        ),),
        backgroundColor:Colors.grey[850],
      ),
      body:Padding(
        padding:EdgeInsets.all(10.0),
        child: ListView(children: <Widget>[
          Container(
            alignment:Alignment.center,
            padding:EdgeInsets.all(10.0),
            child:Text("DETAILS",
            style: TextStyle(
              fontFamily: "nasa",
              fontWeight:FontWeight.bold,
              fontSize:30.0,
              color:Colors.white,
              letterSpacing:2.0
            ),),
          ),
          Container(
            width:10,
            alignment: Alignment.center,
            padding:EdgeInsets.all(10.0),
            child:TextFormField(
              style: TextStyle(
                color:Colors.white,
                fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                border:OutlineInputBorder(),
                labelText:"first name",
                labelStyle:TextStyle(
                  fontFamily:"nasa",
                  color:Colors.white,
                ),
              ),
              ),
          ),
          Container(
            width: 10.0,
            alignment:Alignment.center,
            padding: EdgeInsets.all(10.0),
            child:TextFormField(
              style:TextStyle(
                color:Colors.white,
                fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                border:OutlineInputBorder(),
                labelText:"last name",
                labelStyle:TextStyle(
                  fontFamily:"nasa",
                  color:Colors.white
                )
              ),
            ),
          ),
          Container(
            width: 10.0,
            alignment:Alignment.center,
            padding: EdgeInsets.all(10.0),
            child:TextFormField(
              style:TextStyle(
                  color:Colors.white,
                  fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"place",
                  labelStyle:TextStyle(
                      fontFamily:"nasa",
                      color:Colors.white
                  )
              ),
            ),
          ),
          Container(
            width: 10.0,
            alignment:Alignment.center,
            padding: EdgeInsets.all(10.0),
            child:TextFormField(
              style:TextStyle(
                  color:Colors.white,
                  fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"Date of birth",
                  labelStyle:TextStyle(
                      fontFamily:"nasa",
                      color:Colors.white
                  )
              ),
            ),
          ),
          Container(
            width: 10.0,
            alignment:Alignment.center,
            padding: EdgeInsets.all(10.0),
            child:TextFormField(
              style:TextStyle(
                  color:Colors.white,
                  fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"Photo",
                  labelStyle:TextStyle(
                      fontFamily:"nasa",
                      color:Colors.white
                  )
              ),
            ),
          ),
          Container(
            height:50.0,
            padding:EdgeInsets.fromLTRB(10, 0, 10,0),
            child:RaisedButton(
              onPressed:(){},
              child:Text("Save",
              style:TextStyle(
                fontFamily:"nasa",
                fontSize:20.0,
                fontWeight:FontWeight.bold,
                color:Colors.white,
                letterSpacing:2.0
              ),),
              color:Colors.grey[700],
            ),
          ),
          Container(
            alignment:Alignment.center,
            padding:EdgeInsets.all(10.0),
            child:Text("\n \n \n HK Group",
              style: TextStyle(
                  fontFamily: "nasa",
                  fontWeight:FontWeight.bold,
                  fontSize:25.0,
                  color:Colors.white,
                  letterSpacing:2.0
              ),),
          ),
        ],),
      ),
    );
  }
}



