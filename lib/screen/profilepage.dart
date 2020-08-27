
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:secure_spy/model/details.dart';
import 'package:secure_spy/notifer/detail_notifier.dart';
import 'package:provider/provider.dart';
import 'package:secure_spy/api/detail_api.dart';

class securespythree extends StatefulWidget {
  @override
  _securespythreeState createState() => _securespythreeState();
}

void deleteContent(BuildContext context)//popup box
{
  var alertDialog = AlertDialog(
    backgroundColor:Colors.grey,
    title:Text("Deleted",
    ),
    content:Text("Your Details has been Deleted",
    ),
  );
  showDialog(
      context:context,
      builder:(BuildContext context)=>alertDialog
  );
}

var refreshKey = GlobalKey<RefreshIndicatorState>();

Widget userListing(){
  return ListView.builder(
      itemCount: 1,
      itemBuilder: (context,index){
        return Consumer<DetailNotifier>(
          builder:(context,x,child){
            return Column(
              children: <Widget>[for(Detail y in x.detailList)
                Card(
                  margin: EdgeInsets.all(10),
                  color:Colors.grey,
                  child:Padding(
                    padding: EdgeInsets.all(16.0),

                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Container(
                                  child: Text(y.name,
                                    style: TextStyle(
                                      fontFamily:"nasa",
                                        fontSize:16.0,
                                        letterSpacing:2.0,
                                        color:Colors.black
                                    ),

                                  ),
                                ),
                                onTap: (){
                                  x.currentUser = y;

                                  Navigator.pushNamed(context, '/viewpage');

                                },
                                onLongPress: (){
                                  deleteDetail(y);

                                  Navigator.pushNamed(context, '/profilepage');
                                  deleteContent(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        RaisedButton.icon(onPressed: () {
                          x.currentUser = y;
                          Navigator.pushNamed(context, '/editingform');
                        },
                          icon: Icon(Icons.edit),
                          label: Text('Edit',
                          style: TextStyle(
                            fontFamily: "nasa"
                          ),),
                          color: Colors.grey,
                        ),
                        SizedBox(width: 6.0),
                      ],
                    ),
                  ) ,
                ),
              ],
            );
          },
        );
      },
    );

}

//Future <Null> refreshList() async {
//  DetailNotifier detailNotifier = Provider.of<DetailNotifier>(context,listen: false);
//  getDetails(detailNotifier);
//  refreshKey.currentState?.show(atTop: false);
//  await Future.delayed(Duration(seconds: 2));
//}
//
//void initState()
//{
//  super.initState();
//  DetailNotifier detailNotifier = Provider.of<DetailNotifier>(Context, listen: false);
//  getDetails(detailNotifier);
//  refreshList();
//}
class _securespythreeState extends State<securespythree> {
  @override
  Widget build(BuildContext context) {
    DetailNotifier detailNotifier = Provider.of<DetailNotifier>(context);
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
        padding: const EdgeInsets.all(12.0),
        child: userListing(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[700],
        onPressed: (){
          Navigator.pushNamed(context, '/detailsaddingpage');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}