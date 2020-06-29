
import 'dart:convert';

class Plant {
  final String name;
  final String water;
  final String maxHeat;
  final String minHeat;
  final String avgLife;

  Plant({this.name, this.water, this.maxHeat, this.minHeat, this.avgLife});

   factory Plant.fromJson(/*Map<String, dynamic>*/ dynamic Res , int a) {
    final data = Res;
    print(data);

      return  new Plant(
        name: data['$a']['Name'] as String,
        water: data['$a']['Water'] as String,
        maxHeat: data['$a']['MaximmumHeat'] as String,
        minHeat: data['$a']['MinimumHeat'] as String,
        avgLife: data['$a']['AvarageLife'] as String,
      );

  }
}