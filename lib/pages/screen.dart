import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:http/http.dart' as http;

import '../widget/widgetClimate.dart';
import '../widget/widgetTable.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getCurrentClimate();
  }

  var temp;
  var local;
  var umidade;
  var velocidade;
  var visibilidade;
  var sensacao;

  Future getCurrentClimate() async {
    var endpoint =
        "https://api.openweathermap.org/data/2.5/weather?lat=-18.9113&lon=-48.2622&appid=c8f6bb1d914cdecd2bc67b12c74ba3b4";

    http.Response response = await http.get(Uri.parse(endpoint));
    var body = jsonDecode(response.body);
    setState(() {
      umidade = body["main"]["humidity"];
      velocidade = body["wind"]["speed"];
      temp = body["main"]["temp"];
      visibilidade = body["visibility"];
      sensacao = body["main"]["feels_like"];
      local = body["name"];
    });
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  WidgetClimate(
                    temp != null ? '${temp.toString()}' : '...',
                    local != null ? '${local.toString()}' : '...',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  widgetTable(
                    velocidade != null ? '${velocidade.toString()}' : '...',
                    umidade != null ? '${umidade.toString()}' : '...',
                    visibilidade != null ? '${visibilidade.toString()}' : '...',
                    sensacao != null ? '${sensacao.toString()}' : '...',
                  )
                ],
              ),
            )),
      ),
    ));
  }
}
