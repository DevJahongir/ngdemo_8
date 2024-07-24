import 'package:flutter/material.dart';
import 'package:ngdemo8/pages/counter_page.dart';
import 'package:ngdemo8/pages/globalkey_page.dart';
import 'package:ngdemo8/pages/lifecycle_page.dart';
import 'package:ngdemo8/pages/objectkey_page.dart';
import 'package:ngdemo8/pages/uniquekey_page.dart';
import 'package:ngdemo8/pages/value_key_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GlobalkeyPage(),
    );
  }
}
