import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_apps/provider/product.dart';
import 'package:shop_apps/widget/product_item.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final product = productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: product.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        id: product[i].id,
        imageUrl: product[i].imageUrl,
        title: product[i].title,
      ),
    );
  }
}
