import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Gardening extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String plantName;
    return Theme(
      data: ThemeData().copyWith(primaryColor: Colors.green),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Gardening',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          //backgroundColor:
        ),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  hintText: 'Plant name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                ),
                onChanged: (plant) {
                  plantName = plant;
                  print(plantName);
                },
              ),
              Container(
                //color: Colors.green,
                margin: EdgeInsets.symmetric(vertical: 30.0),
                child: FlatButton(
                  padding: EdgeInsets.all(12.0),
                  color: Colors.green,
                  splashColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {},
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
