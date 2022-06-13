import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_apps/provider/product.dart';
import 'package:shop_apps/screan/produck_overview_page.dart';
import 'package:shop_apps/screan/prooduct_detitle_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Myshop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
          ).copyWith(
            secondary: Colors.deepOrange,
          ),
        ),
        routes: {
          '/': (context) => const ProductOverviewPage(),
          ProductDetitlePage.routeName: (context) => const ProductDetitlePage(),
        },
      ),
    );
  }
}
