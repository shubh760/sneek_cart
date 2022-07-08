import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shoe_cart/models/product_model.dart';
import 'package:shoe_cart/widgets/product_list.dart';
import 'package:shoe_cart/widgets/product_widget.dart';

import '../widgets/shoppingcart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Sneex",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  showBarModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      color: Colors.white,
                      child: ShoppingCartWidget(),
                    ),
                  );
                })
          ],
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white30,
          child: Productlist(),
        ));
  }
}
