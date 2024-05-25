import 'package:flutter/material.dart';
import 'package:pt5_flutter/Serach.dart';
import 'package:pt5_flutter/Spinner.dart';
import 'package:pt5_flutter/Derawar.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Derawar(),
        '/Serach': (context) => Serach(),
        '/Spinner': (context) => Spinner(),
      },
    );
  }
}