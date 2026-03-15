import 'package:flutter/material.dart';
import 'package:nti_task5/constant.dart';
import 'package:nti_task5/widgets/order_list.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF4CAF50),
          foregroundColor: Colors.white,
          title: const Text(
            'طلباتي',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'قيد التنفيذ'),
              Tab(text: 'مكتملة'),
              Tab(text: 'ملغاة'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OrderList(orders: pendingOrders, emptyMsg: 'لا يوجد طلبات نشطة'),
            OrderList(
              orders: completedOrders,
              emptyMsg: 'لا يوجد طلبات مكتملة',
            ),
            OrderList(orders: cancelledOrders, emptyMsg: 'لا يوجد طلبات ملغاة'),
          ],
        ),
      ),
    );
  }
}
