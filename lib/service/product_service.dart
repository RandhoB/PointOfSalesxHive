import 'package:pointofsales_hive/service/local_storage_service.dart';
import 'package:uuid/uuid.dart';

class ProductService {
  static List productList = [];

  static saveToLocalStorage() async {
    await mainStorage.put("products", productList);
  }

  static Future<List> getProducts() async {
    return mainStorage.get("products") ?? [];
  }

  //video 26:26
  static addProduct({
    required String photo,
    required String productName,
    required String price,
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
    required String price,
    required String description,
  }) {
    var targetIndex = productList.indexWhere((product) => product['id'] == id);
    productList[targetIndex] = {
      "photo": photo,
      "productName": productName,
      "price": price,
      "description": description,
    };
    saveToLocalStorage();
  }

  static deleteProduct(String id) {
    productList.removeWhere((product) => product['id'] == id);
    saveToLocalStorage();
  }
}
