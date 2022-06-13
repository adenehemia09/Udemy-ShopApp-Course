import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_apps/provider/product.dart';

class ProductDetitlePage extends StatelessWidget {
  static const routeName = '/product-detitle';

  const ProductDetitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadProduct.title.toString(),
        ),
      ),
    );
  }
}
