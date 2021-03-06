import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:date_field/date_field.dart';
import 'package:secure_spy/api/detail_api.dart';
import 'package:secure_spy/notifer/detail_notifier.dart';
import 'package:secure_spy/model/details.dart';
import 'package:provider/provider.dart';

class securespytwo extends StatefulWidget {
  @override
  _securespytwoState createState() => _securespytwoState();
}

class _securespytwoState extends State<securespytwo> {


  File _imageFile; // adding image code
  DateTime selectedDate;

  getImage() async{
    File imageFile=
    await ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);
    setState(() {
      _imageFile = imageFile;
    });
  }


//  Future getImage() async{
//    var tempImage= await ImagePicker.pickImage(source:ImageSource.gallery);
//    setState(() {
//      image=tempImage;
//    });// image code
//  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Detail _currentUser;

  void initState() {
    super.initState();
    DetailNotifier detailNotifier = Provider.of<DetailNotifier>(context, listen: false);
    if (detailNotifier.currentUser != null)
    {
      _currentUser=detailNotifier.currentUser;
    }else
      {
      _currentUser= Detail();
      }
  }



  Widget _buildName()
  {
    return TextFormField(
      style: TextStyle(
          color:Colors.black,
          fontFamily:"nasa"
      ),
      decoration: InputDecoration(labelText: 'Name',
          border:OutlineInputBorder(),
          labelStyle:TextStyle(
              fontFamily:"nasa",
              color:Colors.black
          )),
      //initialValue:_currentState.name,
      maxLength: 20,
      onSaved: (String value){
        _currentUser.name=value;
      },
    );
  }

  Widget _buildPlace()
  {
    return TextFormField(
      style: TextStyle(
          color:Colors.black,
          fontFamily:"nasa"
      ),

      decoration: InputDecoration(labelText: 'Place',
          border:OutlineInputBorder(),
          labelStyle:TextStyle(
              fontFamily:"nasa",
              color:Colors.black
          )),
      //initialValue:_currentState.name,
      maxLength: 20,
      onSaved: (String value){
        _currentUser.place=value;
      },
    );
  }

  Widget _buildDob() {
    return DateField(
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
    );
  }
  Widget _buildPhone()
  {
    return TextFormField(
      style: TextStyle(
          color:Colors.black,
          fontFamily:"nasa"
      ),
      decoration: InputDecoration(labelText:'Phone',
          border:OutlineInputBorder(),
          labelStyle:TextStyle(
              fontFamily:"nasa",
              color:Colors.black
          )),
      //initialValue:_currentState.phone,
      // ignore: missing_return
      onSaved: (String value)
      {
        _currentUser.phone=value;
      },

    );
  }

  @override
  Widget build(BuildContext context) {
    DetailNotifier detailNotifier = Provider.of<DetailNotifier>(context, listen: false);
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
      body:SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          autovalidate: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:15),
              _buildName(),
              SizedBox(height:15),
              _buildPlace(),
              SizedBox(height:15),
              _buildDob(),
              SizedBox(height:15),
              _buildPhone(),
              SizedBox(height: 20),
              Container(
                width: 550,
                height:50.0 ,
                padding: EdgeInsets.all(0.0),
              child:RaisedButton.icon(
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
              SizedBox(height: 20.0),
              Container(
                width: 500,
                height:50.0 ,
                padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:RaisedButton(
                onPressed:(){
                  _formkey.currentState.save();
                  uploadDetailAndImage(_currentUser, _imageFile, selectedDate);
                  Navigator.pushReplacementNamed(context, '/profilepage');
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
                child:Text("\n \n \n HAI,THIS IS HARI !!",
                  style: TextStyle(
                      fontFamily: "nasa",
                      fontWeight:FontWeight.bold,
                      fontSize:25.0,
                      color:Colors.white,
                      letterSpacing:2.0
                  ),),
              ),

            ],
          ),
        ),
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