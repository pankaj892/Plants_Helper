import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'plant.dart';

import 'list.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:  ThemeData(
      primaryColor:  Color(0xFF02BB9F),
      primaryColorDark:  Color(0xFF167F67),
      accentColor:  Color(0xFF167F67),
    ),
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  List data;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          title:  Text('Plants Helper' , style: TextStyle(color: Colors.white),),
           centerTitle: true,
        ),
        body:  Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child:  FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('PlantsData.json'),
                builder: (context, snapshot) {
                  List<Plant> plants =
                  parseJson(snapshot.data.toString());
                  return plants != null
                      ?   PlantList(plant: plants)
                      : Center(child: new CircularProgressIndicator());
                }),
          ),
        ));
  }

   List<Plant> parseJson(String response)  {
    if(response==null){
      return [];
    }else {
      List<Plant> mylist=[];
      final parsed = json.decode(response.toString());
      if(parsed==null)
        print('Error skip');
      else{
        mylist.add(Plant.fromJson(parsed , 0));
        mylist.add(Plant.fromJson(parsed , 1));
        mylist.add(Plant.fromJson(parsed , 2));
      }
     //print(parsed.runtimeType.toString());
      return mylist;
    }
    // return parsed.cast<Plant>((json) => new Plant.fromJson(json)).toList();
  }
}

