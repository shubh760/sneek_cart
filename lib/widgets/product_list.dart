import 'package:flutter/material.dart';

import '../models/product_model.dart';
import 'product_widget.dart';

class Productlist extends StatelessWidget {
  const Productlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: Product.products.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left:8.0, right: 8.0),
          child: SingleProductWidget(
            index: index,
          ),
        );
      },
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
