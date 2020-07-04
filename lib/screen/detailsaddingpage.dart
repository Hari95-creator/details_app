import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:date_field/date_field.dart';


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
  DateTime selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        title: Text("welcome to secure Id",
          style:TextStyle(
              fontFamily:"nasa",
              letterSpacing:2.0
          ),),
        backgroundColor:Colors.blueAccent,
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
                  color:Colors.black,
                  fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                border:OutlineInputBorder(),
                labelText:"first name",
                labelStyle:TextStyle(
                  fontFamily:"nasa",
                  color:Colors.black,
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
                  color:Colors.black,
                  fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"last name",
                  labelStyle:TextStyle(
                      fontFamily:"nasa",
                      color:Colors.black
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
                  color:Colors.black,
                  fontFamily:"nasa"
              ),
              decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"place",
                  labelStyle:TextStyle(
                      fontFamily:"nasa",
                      color:Colors.black
                  )
              ),
            ),
          ),
          Container(
            width:10.0,
            alignment:Alignment.center,
            padding:EdgeInsets.all(10.0),
            child:DateField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
              ),
              label:"Date of Birth",
              selectedDate: selectedDate,
              onDateSelected: (DateTime date) {
                setState(() {
                  selectedDate = date;
                });
              },
              lastDate: DateTime(2020),
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
                  labelText:"Date of birth",
                  labelStyle:TextStyle(
                      fontFamily:"nasa",
                      color:Colors.white
                  )
              ),
            ),
          ),*/
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
              onPressed:(){Navigator.pushReplacementNamed(context, '/profilepage');
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
    content:Text("your details saved",
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