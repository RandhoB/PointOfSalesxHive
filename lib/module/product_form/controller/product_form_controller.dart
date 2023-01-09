import 'package:flutter/material.dart';
import 'package:pointofsales_hive/core.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../view/product_form_view.dart';

class ProductFormController extends State<ProductFormView>
    implements MvcController {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? productName;
  String? photo;
  String? price;
  String? description;
  //33:13
  doSave() async {
    await ProductService.addProduct(
      photo: photo!,
      productName: productName!,
      price: price!,
      description: description!,
    );
    Get.back();
  }
}
