import 'dart:convert';
import 'package:flutter/material.dart';
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
    super.initState();
    this.getCurrentClimate();
  }

  var temp;
  var local;
  var umidade;
  var velocidade;
  var descricao;
  var sensacao;

  Future getCurrentClimate() async {
    var endpoint =
        "https://api.hgbrasil.com/weather?woeid=455917";

    http.Response response = await http.get(Uri.parse(endpoint));
    var body = jsonDecode(response.body);
    setState(() {
      umidade = body["results"]["humidity"];
      velocidade = body["results"]["wind_speedy"];
      temp = body["results"]["temp"];
      descricao = body["results"]["description"];
      sensacao = body["results"]["temp"];
      local = body["results"]["city"];
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
                    temp != null ? temp.toString() : '...',
                    local != null ? local.toString() : '...',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  widgetTable(
                    velocidade != null ? velocidade.toString() : '...',
                    umidade != null ? umidade.toString() : '...',
                    descricao != null ? descricao.toString() : '...',
                    sensacao != null ? sensacao.toString() : '...',
                  )
                ],
              ),
            )),
      ),
    ));
  }
}
