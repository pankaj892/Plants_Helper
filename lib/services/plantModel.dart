import 'package:plants/services/networking.dart';

const String apiKey = 'NkdJbzZOTnpQaEIram9GSmVnUUZBUT09';
const String trefleUrl = 'https://trefle.io/api';

//plants?q=blackwood&token=NkdJbzZOTnpQaEIram9GSmVnUUZBUT09

class PlantsModel {
  Future<dynamic> getPlants(String plantName) async {
    String url = '$trefleUrl/plants?q=$plantName&token=$apiKey';
    NetworkHelper networkHelper = NetworkHelper(url);
    var plantsData = await networkHelper.getData();
    return plantsData;
  }
}
