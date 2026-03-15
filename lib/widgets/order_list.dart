import 'package:flutter/material.dart';
import 'package:nti_task5/widgets/order_card.dart';

class OrderList extends StatelessWidget {
  final List<Map<String, String>> orders;
  final String emptyMsg;

  const OrderList({super.key, required this.orders, required this.emptyMsg});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(order: orders[index]);
      },
    );
  }
}
