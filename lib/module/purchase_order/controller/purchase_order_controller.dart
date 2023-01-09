import 'package:flutter/material.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../view/purchase_order_view.dart';

class PurchaseOrderController extends State<PurchaseOrderView> implements MvcController {
  static late PurchaseOrderController instance;
  late PurchaseOrderView view;

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