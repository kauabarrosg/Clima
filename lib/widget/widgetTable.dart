import 'package:flutter/material.dart';

Widget widgetTable(
  String velocidade,
  String umidade,
  String descricao,
  String sensacao,
) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      width: 390,
      height: 340,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    width: 45,
                    height: 45,
                    child: Image.asset('assets/imagens/agua.png')),
                Text(
                  'Umidade',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  umidade,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Container(
                    width: 45,
                    height: 45,
                    child: Image.asset('assets/imagens/termometro.png')),
                Text(
                  'Sensação',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                 '$sensacao°',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 100),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    width: 45,
                    height: 45,
                    child: Image.asset('assets/imagens/wind.png')),
                Text(
                  'Vento',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  velocidade,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Container(
                    width: 45,
                    height: 45,
                    child: Image.asset('assets/imagens/clima.png')),
                Text(
                  'Descrição',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  descricao,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ]),
            ],
          ),
        ),
      ),
    ),
  );
}
