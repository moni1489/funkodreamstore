import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Под заказ')),
      body: const Center(child: Text('Страница "Под заказ"')),
    );
  }
}
