import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final String brande;
  final String id;
  final String image;
  final int price;

  const Product(
      {required this.name,
      required this.brande,
      required this.id,
      required this.image,
      required this.price});

  /* static Product fromSanpshot(DocumentSnapshot snap) {
    Product product = Product(
        name: snap['name'],
        brande: snap['brande'],
        id: snap['id'],
        image: snap['image'],
        price: snap['price']);
    return product;
  } */

  static const List<Product> products = [
    Product(
        name: "Nike Airmax",
        brande: "Nike",
        id: "id",
        image:
            "https://firebasestorage.googleapis.com/v0/b/sneekcart.appspot.com/o/1.jpeg?alt=media&token=06fe8afd-b1ca-40ad-874a-3ed822f47648",
        price: 22),
        Product(
        name: "Nike Max",
        brande: "Nike",
        id: "id",
        image:
            "https://firebasestorage.googleapis.com/v0/b/sneekcart.appspot.com/o/3.jpeg?alt=media&token=92e68164-3ceb-45ad-bf65-a532fd6c9a39",
        price: 16),
        Product(
        name: "Nike Airmax 270",
        brande: "Nike",
        id: "id",
        image:
            "https://firebasestorage.googleapis.com/v0/b/sneekcart.appspot.com/o/4.jpeg?alt=media&token=079426af-8351-48c7-8936-0c8e4cf5fa6f",
        price: 18),
        Product(
        name: "Nike max 270",
        brande: "Nike",
        id: "id",
        image:
            "https://firebasestorage.googleapis.com/v0/b/sneekcart.appspot.com/o/2.jpeg?alt=media&token=882a0f48-a774-42ec-9e51-a27adea44735",
        price: 13),
        Product(
        name: "adidas runners",
        brande: "Adidas",
        id: "id",
        image:
            "https://firebasestorage.googleapis.com/v0/b/sneekcart.appspot.com/o/5.jpeg?alt=media&token=1265e807-72b7-4890-9a6b-3cb1cbfe375d",
        price: 23),
        Product(
        name: "black runner",
        brande: "Adidad",
        id: "id",
        image:
            "https://firebasestorage.googleapis.com/v0/b/sneekcart.appspot.com/o/6.jpeg?alt=media&token=3c54141f-da89-4861-bcb0-50a26014de60",
        price: 32),
        
  ];
}
