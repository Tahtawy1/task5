// دول برودكتش للتست

import 'package:flutter/material.dart';

const List<Map<String, String>> pendingOrders = [
  {'title': 'لابتوب ديل بريزشن', 'status': 'قيد التوصيل', 'image': '💻'},
  {'title': 'سماعة بلوتوث', 'status': 'قيد التنفيذ', 'image': '🎧'},
];

const List<Map<String, String>> completedOrders = [
  {'title': 'ساعة سمارت', 'status': 'مكتملة', 'image': '⌚'},
];

const List<Map<String, String>> cancelledOrders = [
  {'title': 'كاميرا', 'status': 'ملغاة', 'image': '📷'},
];

const List<Map<String, dynamic>> categories = [
  {'label': 'كتب', 'icon': Icons.menu_book},
  {'label': 'منزل', 'icon': Icons.home},
  {'label': 'ملابس', 'icon': Icons.checkroom},
  {'label': 'إلكترونيات', 'icon': Icons.devices},
];

const List<Map<String, String>> products = [
  {'name': 'لابتوب احترافي', 'price': '2500 ج.م', 'image': '💻'},
  {'name': 'سماعات لاسلكية', 'price': '350 ج.م', 'image': '🎧'},
  {'name': 'ساعة ذكية', 'price': '890 ج.م', 'image': '⌚'},
  {'name': 'كاميرا رقمية', 'price': '1800 ج.م', 'image': '📷'},
  {'name': 'شاشة LCD', 'price': '1200 ج.م', 'image': '🖥️'},
  {'name': 'طابعة ليزر', 'price': '650 ج.م', 'image': '🖨️'},
];
