import 'package:flutter/material.dart';
import 'package:shoe_cart/models/product_model.dart';

import '../controllers/cart_controller.dart';

class CartItemWidget extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  const CartItemWidget({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            product.image,
            width: 80,
          ),
        ),
        Expanded(
            child: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  product.name,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(Icons.chevron_left),
                    onPressed: () {
                      controller.removeproduct(product);
                    }),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    quantity.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {
                      controller.addProduct(product);
                    }),
              ],
            )
          ],
        )),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Text(
            "\$${product.price}",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
