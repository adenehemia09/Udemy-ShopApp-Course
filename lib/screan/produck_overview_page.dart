import 'package:flutter/material.dart';
import 'package:shop_apps/widget/product_grid.dart';

class ProductOverviewPage extends StatelessWidget {
  const ProductOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Myshop"),
      ),
      body: const GridProduct(),
    );
  }
}
