import 'package:flutter/material.dart';
import 'package:pointofsales_hive/core.dart';
import 'package:pointofsales_hive/service/product_service.dart';
import 'package:pointofsales_hive/service/purhcase_order_service.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../view/purchase_order_view.dart';

class PurchaseOrderController extends State<PurchaseOrderView>
    implements MvcController {
  static late PurchaseOrderController instance;
  late PurchaseOrderView view;

  @override
  void initState() {
    instance = this;
    ProductService.clearQty();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doCheckout() async {
    var productList =
        ProductService.productList.where((p) => p["qty"] > 0).toList();
    await PurchaseOrderService.doCheckout(
      productList: productList,
    );
    Get.back();
    showInfoDialog("Anda Berhasil Checkout");
  }
}
