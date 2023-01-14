import 'package:pointofsales_hive/service/local_storage_service.dart';
import 'package:pointofsales_hive/service/product_service.dart';

class SalesOrderService {
  static List salesOrderList = [];

  static get purchaseOrderList => null;

  static saveToLocalStorage() async {
    await mainStorage.put("sales_orders", salesOrderList);
  }

  static loadDataFromDB() async {
    salesOrderList = mainStorage.get("sales_order") ?? [];
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
    salesOrderList.add({
      "created_at": DateTime.now(),
      "items": productList,
      "total": ProductService.total,
      //biasanya ada payment method dll
    });
    // purchaseOrderList.clear();
    saveToLocalStorage();
    //mengupdate stock
    for (var product in productList) {
      ProductService.reduceStock(
        id: product["id"],
        qty: product["qty"],
      );
    }
  }
}
