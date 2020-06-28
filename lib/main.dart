import 'package:flutter/material.dart';
import 'package:plants/services/plantModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> plantWidgets = [];
  void getData(String plantName) async {
    PlantsModel plantsModel = PlantsModel();
    var plantsData = plantsModel.getPlants(plantName);

    for (Map plantsPage in await plantsData) {
      List<Widget> plantParameter = [];
      plantsPage.forEach((key, value) {
        plantParameter.add(Text('$key: $value'));
      });
      plantWidgets.add(Column(children: plantParameter));
    }
  }

  @override
  Widget build(BuildContext context) {
    String plantName;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Search')),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  plantName = value;
                },
              ),
              FlatButton(
                child: Text('Search'),
                onPressed: () {
                  return getData(plantName);
                },
              ),
              Column(children: plantWidgets),
            ],
          ),
        ),
      ),
    );
  }
}
