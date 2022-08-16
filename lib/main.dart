import 'package:clima_app/pages/loadingPage.dart';
import 'package:clima_app/pages/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: const LoadingPage(),
  ));
}
