import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:pointofsales_hive/module/main_navigation/view/main_navigation_view.dart';
import 'package:pointofsales_hive/service/local_storage_service.dart';
import 'package:pointofsales_hive/service/product_service.dart';
import 'package:pointofsales_hive/service/purhcase_order_service.dart';
import 'package:pointofsales_hive/service/sales_order_service.dart';
import 'package:pointofsales_hive/setup.dart';
import 'package:pointofsales_hive/state_util.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
Pos / inventory App
Master Data 
- Product CRUD X

(Produk, Stok, Terjual)
- Transaksi (POS)
> Puchase Order | Transaksi Pembelian (+stok bertambah)
> Sales Transaction | Transaksi Penjualan (-stok berkurang)

- Report
>Sales Report
> Stock Report

Data : Disimpan ke dalam localstorage (Hive) , aplikasi dapat berjalan dengan offline

Service :
- ProductService
- OrderService

*/
//43:46

void main() async {
  await initialize();
  // if (!kIsWeb) {
  //   var path = await getTemporaryDirectory();
  //   Hive.init(path.path);
  // }
  var path = await getTemporaryDirectory();
  Hive.init(path.path);

  mainStorage = await Hive.openBox('mainstorage');

  await ProductService.loadDataFromDB();
  await PurchaseOrderService.loadDataFromDB();
  await SalesOrderService.loadDataFromDB();

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.transparent,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Colors.grey,
          )),
      home: const MainNavigationView(),
    );
  }
}
