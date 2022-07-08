import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_cart/controllers/cart_controller.dart';
import 'package:shoe_cart/widgets/cart_item.dart';

import 'custom_btn.dart';

class ShoppingCartWidget extends StatelessWidget {
  final cartcontroller = Get.put(CartController());
  ShoppingCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()
      => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          
          title: Center(child: Text('Cart',style: TextStyle(color: Colors.black),))),
        body: ListView.builder(
          itemCount: cartcontroller.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartItemWidget(
                controller: cartcontroller,
                product: cartcontroller.products.keys.toList()[index],
                quantity: cartcontroller.products.values.toList()[index],
                index: index);
          },
        ),
        bottomSheet: CustomButton(onTap: (){}, text: cartcontroller.total.toString(),),
      ),
    );
  }
}
