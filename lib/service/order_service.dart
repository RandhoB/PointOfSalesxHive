import 'package:pointofsales_hive/service/local_storage_service.dart';
import 'package:pointofsales_hive/service/product_service.dart';

class OrderService {
  static List purchaseOrderList = [];

  static saveToLocalStorage() async {
    await mainStorage.put("purchase_orders", purchaseOrderList);
  }

  static getProducts() async {
    purchaseOrderList = mainStorage.get("purchase_order") ?? [];
  }
}
