import 'package:ecommerce/views/items/profile/orders/delivered_order_container.dart';
import 'package:flutter/material.dart';
class DeliveredLayout extends StatefulWidget {
  const DeliveredLayout({super.key});

  @override
  State<DeliveredLayout> createState() => _DeliveredLayoutState();
}

class _DeliveredLayoutState extends State<DeliveredLayout> {
  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.all(20.0),
    child: Column(

      children: [
        DeliveredOrderContainer(),
        DeliveredOrderContainer(),
        DeliveredOrderContainer(),
      ],
    ),
    );
  }
}
