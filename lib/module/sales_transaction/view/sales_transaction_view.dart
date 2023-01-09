import 'package:flutter/material.dart';
import 'package:pointofsales_hive/core.dart';
import '../controller/sales_transaction_controller.dart';

class SalesTransactionView extends StatefulWidget {
  const SalesTransactionView({Key? key}) : super(key: key);

  Widget build(context, SalesTransactionController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SalesTransaction"),
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
  State<SalesTransactionView> createState() => SalesTransactionController();
}