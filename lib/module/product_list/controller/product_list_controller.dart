import 'package:flutter/material.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../../../service/product_service.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView>
    implements MvcController {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doDelete(String id) async {
    await ProductService.deleteProduct(id);
    setState(() {});
  }
}
