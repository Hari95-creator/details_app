
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
  File image;// adding image code
  Future getImage() async{
    var tempImage= await ImagePicker.pickImage(source:ImageSource.gallery);
    setState(() {
      image=tempImage;
    });// image code
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],
      appBar: AppBar(
        title: Text("welcome to secure Id",
        style:TextStyle(
          fontFamily:"nasa",
          letterSpacing:2.0
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
            //alignment:Alignment.centerLeft,
            padding:EdgeInsets.all(10.0),
            child: RaisedButton.icon(
                onPressed:(){
                  getImage();
                },
                icon:Icon(
                  Icons.add_a_photo
                ),
                label:Text("select profile picture",
                style:TextStyle(
                  color:Colors.black,
                  fontFamily:"nasa"

                ),),
              color:Colors.grey,
            ),
          ),
          /*Container(
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
          ),*/
          Container(
            height:50.0,
            padding:EdgeInsets.fromLTRB(10, 0, 10,0),
            child:RaisedButton(
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>securespythree()));
              savedContent(context);
              },
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
void savedContent(BuildContext context)//popup box
{
  var alertDialog = AlertDialog(
    backgroundColor:Colors.grey,
    title:Text("saved",
      style:TextStyle(
        fontFamily:"nasa",
        letterSpacing:2.0
      ),
    ),
    content:Text("you are secured now",
    style:TextStyle(
      fontFamily:"nasa",
      letterSpacing:1.0,
    ),),
  );
  showDialog(
      context:context,
      builder:(BuildContext context)=>alertDialog
  );
}//popupcode

class securespythree extends StatefulWidget {
  @override
  _securespythreeState createState() => _securespythreeState();
}

class _securespythreeState extends State<securespythree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],
      appBar:AppBar(
        backgroundColor:Colors.grey[850],
        title:Text("Profiles",
        style:TextStyle(
          fontFamily:"nasa",
          letterSpacing:2.0
        ),),
      ),
      body:Padding(
        padding:EdgeInsets.all(10.0),
        child:ListView(children: <Widget>[
          Card(
            child:ListTile(
              leading:Icon(Icons.person),
                  title:Text("Anto Das",
                    style:TextStyle(fontFamily:"nasa",
                    fontSize:16.0,
                    letterSpacing:2.0,
                    color:Colors.black)
                  ),

              trailing:RaisedButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>securespytwo()));
              },
                  icon:Icon(
                    Icons.edit,
                  ),
                  label:Text("Edit",
                  style:TextStyle(
                    fontFamily:"nasa"
                  ),),
              ),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>securespyfour()));
              },
            ),
            color:Colors.grey,
          ),
    Card(
    child:ListTile(
    leading:Icon(Icons.person),
    title:Text("Athul sreekumar",
    style:TextStyle(fontFamily:"nasa",
    fontSize:16.0,
    letterSpacing:2.0,
    color:Colors.black)
    ),

    trailing:RaisedButton.icon(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>securespytwo()));
    },
    icon:Icon(
    Icons.edit,
    ),
    label:Text("Edit",
    style:TextStyle(
    fontFamily:"nasa"
    ),),
    ),
    onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>securespyfour()));
    },
    ),
    color:Colors.grey
    ),
          Card(
              child:ListTile(
                leading:Icon(Icons.person),
                title:Text("Hari Krishnan S G",
                    style:TextStyle(fontFamily:"nasa",
                        fontSize:16.0,
                        letterSpacing:2.0,
                        color:Colors.black)
                ),
                trailing:RaisedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespytwo()));
                },
                  icon:Icon(
                    Icons.edit,
                  ),
                  label:Text("Edit",
                    style:TextStyle(
                        fontFamily:"nasa"
                    ),),
                ),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespyfour()));
                },
              ),
              color:Colors.grey
          ),
          Card(
              child:ListTile(
                leading:Icon(Icons.person),
                title:Text(" Afsal S",
                    style:TextStyle(fontFamily:"nasa",
                        fontSize:16.0,
                        letterSpacing:2.0,
                        color:Colors.black)
                ),
                trailing:RaisedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespytwo()));
                },
                  icon:Icon(
                    Icons.edit,
                  ),
                  label:Text("Edit",
                    style:TextStyle(
                        fontFamily:"nasa"
                    ),),
                ),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespyfour()));
                },
              ),
              color:Colors.grey
          ),
          Card(
              child:ListTile(
                leading:Icon(Icons.person),
                title:Text("Ashish Philip",
                    style:TextStyle(fontFamily:"nasa",
                        fontSize:16.0,
                        letterSpacing:2.0,
                        color:Colors.black)
                ),
                trailing:RaisedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespytwo()));
                },
                  icon:Icon(
                    Icons.edit,
                  ),
                  label:Text("Edit",
                    style:TextStyle(
                        fontFamily:"nasa"
                    ),),
                ),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>securespyfour()));
                },
              ),
              color:Colors.grey
          ),
    ],
        ),
      ),
    );
  }
}
class securespyfour extends StatefulWidget {
  @override
  _securespyfourState createState() => _securespyfourState();
}

class _securespyfourState extends State<securespyfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text("Secure Id",
        style: TextStyle(
          fontFamily:"nasa",
        ),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
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
                  color: Colors.grey[800],
                ),
                Text(
                  "NAME",
                  style:TextStyle(
                    color:Colors.grey,
                    letterSpacing: 2.0,
                    fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "Anonymus",
                  style:TextStyle(
                    color:Colors.amberAccent,
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
                    color:Colors.grey,
                    letterSpacing: 2.0,
                    fontFamily:"nasa"
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "No mans Land",
                  style:TextStyle(
                    color:Colors.amberAccent,
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
                      color:Colors.grey,
                      letterSpacing: 2.0,
                      fontFamily:"nasa"
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  "01/01/2020",
                  style:TextStyle(
                      color:Colors.amberAccent,
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




