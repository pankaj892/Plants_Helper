import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'plant.dart';

class PlantList extends StatelessWidget {
  final List<Plant> plant;
  PlantList({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool open = false ;
    return  ListView.builder(
        itemCount: plant == null ? 0 : plant.length,
        itemBuilder: (BuildContext context, int index) {
          return
             Card(
              child:  Container(

                child:  MaterialButton(
                  onPressed: (){
                    open = !open;

                    // ignore: unnecessary_statements
                     (open) ? Navigator.push(context, MaterialPageRoute(builder: (context) => PlantInfo(plant: plant[index],))) : '';
                  },
                  child: Center(
                      child:  Column(
                        // Stretch the cards in horizontal axis
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                           Center(
                             child: Text(
                              // Read the name field value and set it in the Text widget
                              plant[index].name,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.lightBlueAccent),
                             ),
                           ),

                        ],
                      )
                  ),
                ),
                padding: const EdgeInsets.all(15.0),
              ),
            );
        });
  }
}



class PlantInfo extends StatefulWidget {
  final Plant plant;
  PlantInfo({this.plant});
  @override
  _PlantInfoState createState() => _PlantInfoState();
}

class _PlantInfoState extends State<PlantInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plants Helper' , style: TextStyle(color: Colors.white),),
        elevation: 1,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
          padding: EdgeInsets.only(left: 20 , top: 20),
          child: Text( widget.plant.name.toUpperCase() , style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.only(left: 20 , top: 20),
            child: Text( "Average Lifespan:   ${widget.plant.avgLife}" , style: TextStyle(fontSize: 15),),
          ),
          Container(
            padding: EdgeInsets.only(left: 20 , top: 5),
            child: Text( "Water Consumption:   ${widget.plant.water}" , style: TextStyle(fontSize: 15),),
          ),
          Container(
            padding: EdgeInsets.only(left: 20 , top: 5),
            child: Text( "Heat Tolerance:   Min ${widget.plant.minHeat}  , Max ${widget.plant.maxHeat}" , style: TextStyle(fontSize: 15),),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              margin: EdgeInsets.only(bottom: 42 , top: 100),
              child: Opacity(
                  opacity: 0.5,
                  child: Image.asset('Assets/3700577.jpg' , width: 216, height: 216,)
              ),
            ),
          )
        ],
      ),
    );
  }
}
