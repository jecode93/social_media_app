import 'package:flutter/material.dart';

import 'screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(title: 'JEC social'),
      debugShowCheckedModeBanner: false,
    );
  }
}
