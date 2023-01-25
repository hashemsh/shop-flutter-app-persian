import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "کیف اداری شیک",
      price: 230000,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "کیف کمربندی",
      price: 360000,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "کیف دسته دار ",
      price: 610000,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "کیف مدل قدیمی",
      price: 118000,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "کیف اداری متنوع",
      price: 450000,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "کیف چرمی ",
    price: 610000,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "محصولی که مشاهده می‌کنید کیف دستی زنانه است. محفظه اصلی این کیف به وسیله زیپ بسته می‌شود. وجود یک جیب ساده در داخل کیف به معنی سر و سامان بیشتر لوازم کوچک و حساس داخل آن است.";
