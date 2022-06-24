import 'dart:convert';
import 'package:clima_app/model/modelClimate.dart';
import 'package:http/http.dart' as http;

class ClimateAPI {
  Future<Climate>? getCurrentClimate() async {
    var endpoint =
        "https://api.openweathermap.org/data/2.5/weather?lat=-18.9113&lon=-48.2622&appid=c8f6bb1d914cdecd2bc67b12c74ba3b4";

    var response = await http.get(Uri.parse(endpoint));
    var body = json.decode(response.body);

    Climate climate = Climate.formateJson(body);

    print(climate.umidade);
    print(climate.velocidade);
    print(climate.temperatura);
    return Climate.formateJson(body);
  }
}