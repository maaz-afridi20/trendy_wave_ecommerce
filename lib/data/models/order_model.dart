import 'package:trendy_waves_ecommerce/utils/constants/enums.dart';

class OrderItemModel {
  final String productId;
  final String variantId;
  final int quantity;
  final String title;
  final double price;

  OrderItemModel({
    required this.productId,
    required this.variantId,
    required this.quantity,
    required this.title,
    required this.price,
  });
}

class OrderModel {
  final String id;
  final OrderStatus status;
  final List items;
  final double totalAmount;
  final DateTime orderDate;
  final DateTime deliveryDate;

  OrderModel({
    required this.id,
    required this.status,
    required this.totalAmount,
    required this.items,
    required this.orderDate,
    required this.deliveryDate,
  });
}

// final List<OrderModel> orders = [
//   OrderModel(
//     id: 'CWT0012',
//     status: OrderStatus.processing,
//     totalAmount: 259,
//     orderDate: DateTime(2024, 01, 01),
//     deliveryDate: DateTime(2024, 01, 10),
//     items: [],
//   ),
// ];
