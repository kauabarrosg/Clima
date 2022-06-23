
import 'package:flutter/material.dart';

Widget widgetTable(String tempNoite, String tempDia, IconData iconDia, IconData iconNoite) {
  TextStyle textStyle = const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold 
              );
  return Center(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Dia',
              style: textStyle
            ),
            Text(
              '${tempDia}°',
              style: textStyle
            ),
            Icon(
              iconDia,
              size: 30,
              color: Color(0xffffa500),
            )
          ],
        ),
        Divider(
          thickness: 1.5,
          indent: 25,
          endIndent: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Noite',
              style: textStyle
            ),
            Text(
              '${tempNoite}°',
              style: textStyle
            ),
            Icon(
              iconNoite,
              size: 30,
              color: Color(0xffD4dEE1)
            )
          ],
        ),
      ],
    ),
  );
}
