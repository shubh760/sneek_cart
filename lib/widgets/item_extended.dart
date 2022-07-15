import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/product_model.dart';

class ItemExtended extends StatelessWidget {
  final int index;
  const ItemExtended({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: 20,),
              SizedBox(
                height: 200,
                child: Image.network("${Product.products[index].image}", fit: BoxFit.contain,))
            ],
          ),
        )
      ]),
    );
  }
}
