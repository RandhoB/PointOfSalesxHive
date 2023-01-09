import 'package:flutter/material.dart';
import 'package:pointofsales_hive/core.dart';
import '../controller/purchase_order_controller.dart';

class PurchaseOrderView extends StatefulWidget {
  const PurchaseOrderView({Key? key}) : super(key: key);

  Widget build(context, PurchaseOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PurchaseOrder"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<PurchaseOrderView> createState() => PurchaseOrderController();
}