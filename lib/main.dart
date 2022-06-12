import 'package:flutter/material.dart';
import 'package:shop_apps/screan/produck_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductOverviewPage(),
    );
  }
}
