import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_cart/controllers/cart_controller.dart';

import '../models/product_model.dart';

class SingleProductWidget extends StatelessWidget {
  final int index;
  final cartcontroller = Get.put(CartController());

  SingleProductWidget({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                offset: Offset(3, 2),
                blurRadius: 7)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  "${Product.products[index].image}",
                  height: 60,
                  width: double.infinity,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Product.products[index].name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            Product.products[index].brande,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "\$${Product.products[index].price}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    cartcontroller.addProduct(Product.products[index]);
                  })
            ],
          ),
        ],
      ),
    );
  }
}
