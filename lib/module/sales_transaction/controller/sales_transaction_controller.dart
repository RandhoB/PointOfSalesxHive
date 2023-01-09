import 'package:flutter/material.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../view/sales_transaction_view.dart';

class SalesTransactionController extends State<SalesTransactionView> implements MvcController {
  static late SalesTransactionController instance;
  late SalesTransactionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}