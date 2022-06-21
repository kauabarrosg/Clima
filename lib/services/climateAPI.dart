import 'dart:convert';
import 'package:clima_app/model/modelClimate.dart';
import 'package:http/http.dart' as http;

class ClimateAPI {
  Future<Climate>? getCurrentClimate() async {
    var endpoint = Uri.parse(
        "http://dataservice.accuweather.com/forecasts/v1/daily/1day/33809?apikey=%09AiUOAgIXpJmfZLezNCYvPYRg6wmbaI94&language=pt-br&metric=true%20");
  
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);

    Climate climate = Climate.formateJson(body);

    print(body);
    return Climate.formateJson(body); 
  }
}
