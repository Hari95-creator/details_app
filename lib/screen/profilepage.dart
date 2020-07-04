import 'package:flutter/material.dart';

class securespythree extends StatefulWidget {
  @override
  _securespythreeState createState() => _securespythreeState();
}

class _securespythreeState extends State<securespythree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar:AppBar(
        backgroundColor:Colors.blueAccent,
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
                      color:Colors.white)
              ),

              trailing:RaisedButton.icon(onPressed: (){
                Navigator.pushReplacementNamed(context,'/detailsaddingpage');
              },
                icon:Icon(
                  Icons.edit,
                ),
                label:Text("Edit",
                  style:TextStyle(
                      fontFamily:"nasa",
                  ),),
              ),
              onTap:(){
                Navigator.pushReplacementNamed(context,'/viewpage');
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
                  Navigator.pushReplacementNamed(context,'/detailsaddinpage');
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
                  Navigator.pushReplacementNamed(context,'/viewpage');
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
                  Navigator.pushReplacementNamed(context,'detailsaddingpage');
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
                  Navigator.pushReplacementNamed(context,'/viewpage');
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
                  Navigator.pushReplacementNamed(context,'/detailsaddingpage');
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
                  Navigator.pushReplacementNamed(context,'/viewpage');
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
                  Navigator.pushReplacementNamed(context,'/detailsaddingpage');
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
                  Navigator.pushReplacementNamed(context, '/viewpage');
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