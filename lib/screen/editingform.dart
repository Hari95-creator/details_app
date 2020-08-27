import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:date_field/date_field.dart';
import 'package:secure_spy/api/detail_api.dart';
import 'package:secure_spy/notifer/detail_notifier.dart';
import 'package:secure_spy/model/details.dart';
import 'package:provider/provider.dart';

class securespyfive extends StatefulWidget {
  @override
  _securespyfiveState createState() => _securespyfiveState();
}

class _securespyfiveState extends State<securespyfive> {


  File _imageFile; // adding image code
  DateTime selectedDate;


  getImage() async{
    File imageFile =
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
      // ignore: missing_return
      validator: (String value)
      {
        if(value.isEmpty)
        {
          return "Name is required";
        }
      },
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
      // ignore: missing_return
      validator: (String value)
      {
        if(value.isEmpty)
        {
          return "Name is required";
        }
      },
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
      validator: (String value){
        if(value.length!=10)
        {
          return "mobile number must have 10 digits";
        }
        return null;
      },

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
        padding: EdgeInsets.all(32.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildPlace(),
              _buildDob(),
              _buildPhone(),
              SizedBox(height: 50),

              RaisedButton.icon(
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

              SizedBox(height: 50),

              RaisedButton(

                padding:EdgeInsets.fromLTRB(10, 0, 10,0),
                onPressed:(){
                  _formkey.currentState.save();
                  editDetailAndImage(_currentUser, _imageFile, selectedDate);
                  Navigator.pushReplacementNamed(context, '/profilepage');
                  savedContent(context);
                  if(_formkey.currentState.validate())
                  {
                    return;
                  }
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
    content:Text("your details changed",
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