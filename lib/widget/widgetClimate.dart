import 'package:flutter/material.dart';

Widget WidgetClimate(
    IconData icon, String temperatura, String local, String descricao) {
  return Center(
      child: Column(
    children: [
      Text(
        local,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 30),
      Icon(
        icon,
        size: 55,
      ),
      Text(
        '${temperatura}°',
        style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      ),
      Text(
        descricao,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      )
    ],
  ));
}
