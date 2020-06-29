
import 'dart:convert';

class Plant {
   String name;
   String water;
   String maxHeat;
   String minHeat;
   String avgLife;

  Plant({this.name, this.water, this.maxHeat, this.minHeat, this.avgLife});

   factory Plant.fromJson(/*Map<String, dynamic>*/ var res , int a) {
    final data = res;
    print(data["$a"]['Name']);

      return Plant(
        name: data['$a']['Name'] as String,
        water: data['$a']['Water'] as String,
        maxHeat: data['$a']['MaximumHeat'] as String,
        minHeat: data['$a']['MinimumHeat'] as String,
        avgLife: data['$a']['AverageLife'] as String,
      );

  }
}