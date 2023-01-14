import 'package:pointofsales_hive/service/local_storage_service.dart';
import 'package:uuid/uuid.dart';

class ProductService {
  static List productList = [];

  static saveToLocalStorage() async {
    await mainStorage.put("products", productList);
  }

  static clearQty() async {
    for (var product in productList) {
      product["qty"] = 0;
    }
  }

  static loadDataFromDB() async {
    productList = mainStorage.get("products") ?? [];
  }

  static double get total {
    var productTotal = 0.0;
    for (var product in productList) {
      productTotal += product["qty"] * product["price"];
    }
    return productTotal;
  }

  //video 26:26
  static addProduct({
    required String photo,
    required String productName,
    required double price,
    required String description,
  }) {
    productList.add({
      "id": const Uuid().v4(),
      "photo": photo,
      "productName": productName,
      "price": price,
      "description": description,
    });
    saveToLocalStorage();
  }

  static updateProduct({
    required String id,
    required String photo,
    required String productName,
    required double price,
    required String description,
  }) {
    var targetIndex = productList.indexWhere((product) => product['id'] == id);
    productList[targetIndex] = {
      "id": id,
      "photo": photo,
      "productName": productName,
      "price": price,
      "description": description,
      "stock": 0,
    };
    saveToLocalStorage();
  }

  static deleteProduct(String id) {
    productList.removeWhere((product) => product['id'] == id);
    saveToLocalStorage();
  }

  static updateStock({
    required String id,
    required int qty,
  }) async {
    var targetIndex = productList.indexWhere((product) => product['id'] == id);
    var currentStock = productList[targetIndex]["stock"];
    var newStock = currentStock + qty;
    productList[targetIndex]["stock"] = newStock;
    saveToLocalStorage();
  }

  static reduceStock({
    required String id,
    required int qty,
  }) async {
    var targetIndex = productList.indexWhere((product) => product['id'] == id);
    var currentStock = productList[targetIndex]["stock"];
    var newStock = currentStock - qty;
    productList[targetIndex]["stock"] = newStock;
    saveToLocalStorage();
  }
}
