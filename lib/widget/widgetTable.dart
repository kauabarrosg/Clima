import 'package:flutter/material.dart';
import 'package:fluttericon/meteocons_icons.dart';

Widget widgetTable(
    String velocidade, String umidade, ) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      width: 340,
      height: 340,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Icon(
                  Meteocons.hail,
                  size: 45,
                ),
                Text(
                  'Umidade',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  umidade,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Icon(
                  Meteocons.hail,
                  size: 45,
                ),
                Text(
                  'Sensação',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Informação',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 100),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Icon(
                  Meteocons.hail,
                  size: 45,
                ),
                Text(
                  'Vento',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  velocidade,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Icon(
                  Meteocons.hail,
                  size: 45,
                ),
                Text(
                  'Visibilidade',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Informação',
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
