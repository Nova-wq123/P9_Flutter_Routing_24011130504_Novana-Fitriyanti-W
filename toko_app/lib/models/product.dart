import 'package:flutter/material.dart';

String formatRupiah(num amount) {
  final str = amount.round().toString();
  final buffer = StringBuffer();
  for (int i = 0; i < str.length; i++) {
    if (i > 0 && (str.length - i) % 3 == 0) buffer.write('.');
    buffer.write(str[i]);
  }
  return 'Rp $buffer';
}

Product? findProductById(Object id) {
  final targetId = id.toString();
  for (final product in dummyProducts) {
    if (product.id == targetId) return product;
  }
  return null;
}

class Product {
  final String id;
  final String name;
  final int price;
  final String description;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  String get formattedPrice => formatRupiah(price);

  IconData get icon {
    switch (id) {
      case '1':
        return Icons.directions_run;
      case '2':
        return Icons.backpack;
      case '3':
        return Icons.watch;
      case '4':
        return Icons.headphones;
      default:
        return Icons.local_drink;
    }
  }

  Color get color {
    switch (id) {
      case '1':
        return Colors.indigo;
      case '2':
        return Colors.teal;
      case '3':
        return Colors.deepPurple;
      case '4':
        return Colors.pink;
      default:
        return Colors.orange;
    }
  }
}

const List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Sepatu Lari',
    price: 450000,
    description: 'Sepatu lari ringan dengan bantalan empuk untuk harian.',
    imageUrl: '',
  ),
  Product(
    id: '2',
    name: 'Tas Ransel',
    price: 275000,
    description: 'Tas ransel kapasitas 25 liter, tahan percikan air.',
    imageUrl: '',
  ),
  Product(
    id: '3',
    name: 'Jam Tangan',
    price: 820000,
    description: 'Jam tangan analog minimalis dengan tali kulit sintetis.',
    imageUrl: '',
  ),
  Product(
    id: '4',
    name: 'Headphone',
    price: 650000,
    description: 'Headphone nirkabel dengan peredam bising aktif.',
    imageUrl: '',
  ),
  Product(
    id: '5',
    name: 'Botol Minum',
    price: 95000,
    description: 'Botol minum stainless 750 ml, tahan panas hingga 12 jam.',
    imageUrl: '',
  ),
];