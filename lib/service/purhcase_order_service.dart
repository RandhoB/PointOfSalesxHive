import 'package:pointofsales_hive/service/local_storage_service.dart';
import 'package:pointofsales_hive/service/product_service.dart';

class PurchaseOrderService {
  static List purchaseOrderList = [];

  static saveToLocalStorage() async {
    await mainStorage.put("purchase_orders", purchaseOrderList);
  }

  static loadDataFromDB() async {
    purchaseOrderList = mainStorage.get("purchase_order") ?? [];
  }

  static doCheckout({
    required List productList,
  }) async {
    // var data = {
    //   "created_at": DateTime.now(),
    //   "items": productList,
    //   "total": ProductService.total,
    // };
    // print(data);
    //menyimpan data ke db purchase
    purchaseOrderList.add({
      "created_at": DateTime.now(),
      "items": productList,
      "total": ProductService.total,
      //biasanya ada payment method dll
    });
    // purchaseOrderList.clear();
    saveToLocalStorage();
    //mengupdate stock
    for (var product in productList) {
      ProductService.updateStock(
        id: product["id"],
        qty: product["qty"],
      );
    }
  }
}
