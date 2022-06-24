import 'package:flutter/material.dart';

Widget widgetTable(
   String velocidade, String humidade, IconData iconS, IconData iconH) {
  TextStyle textStyle =
      const TextStyle(fontSize: 19, fontWeight: FontWeight.bold,);
      TextStyle text =
      const TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.amber,);

  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 35,
    margin: EdgeInsets.symmetric(horizontal: 15),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Velocidade', style: textStyle),
                Text('${velocidade}°', style: text),
                Icon(
                  iconS,
                  size: 35,
                )
              ],
            ),
            const Divider(
              thickness: 1.5,
              indent: 25,
              endIndent: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Humidade', style: textStyle),
                Text('${humidade}°', style: text),
                Icon(
                  iconH,
                  size: 35,
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
