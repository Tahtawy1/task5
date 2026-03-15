import 'package:flutter/material.dart';
import 'package:nti_task5/screens/orders_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        foregroundColor: Colors.white,
        title: const Text('السلة'),
        centerTitle: true,
      ),
      body: const OrdersScreen(),
    );
  }
}
