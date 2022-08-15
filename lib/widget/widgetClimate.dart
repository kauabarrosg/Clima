import 'package:flutter/material.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:intl/intl.dart';

Widget WidgetClimate(
  String temperatura,
  String local,
) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 340,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat.MMMMd().format(DateTime.now()),
              ),
              Row(
                children: [
                  Text(
                    '15°',
                    style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 100),
                  Container(
                      width: 78,
                      height: 78,
                      child: Image.asset('assets/imagens/nuvem.png')),
                ],
              ),
              Text(
                local,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ));
}
