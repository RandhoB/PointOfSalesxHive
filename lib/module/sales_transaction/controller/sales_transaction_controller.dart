import 'package:flutter/material.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../../../service/product_service.dart';
import '../../../service/purhcase_order_service.dart';
import '../../../service/sales_order_service.dart';
import '../../../shared/util/dialog/show_info_dialog.dart';
import '../view/sales_transaction_view.dart';

class SalesTransactionController extends State<SalesTransactionView>
    implements MvcController {
  static late SalesTransactionController instance;
  late SalesTransactionView view;

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
    await SalesOrderService.doCheckout(
      productList: productList,
    );
    Get.back();
    showInfoDialog("Anda Berhasil Menjual");
  }
}
