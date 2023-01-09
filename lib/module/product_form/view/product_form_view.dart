import 'package:flutter/material.dart';
import 'package:pointofsales_hive/core.dart';
import 'package:pointofsales_hive/shared/util/validator/validator.dart';
import 'package:pointofsales_hive/shared/widget/form/numberfield.dart';
import 'package:pointofsales_hive/shared/widget/form/textarea.dart';
import 'package:pointofsales_hive/shared/widget/form/textfield.dart';
import '../../../shared/widget/form/image_picker.dart';
import '../controller/product_form_controller.dart';

class ProductFormView extends StatefulWidget {
  const ProductFormView({Key? key}) : super(key: key);

  Widget build(context, ProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
              QTextField(
                label: "Product Name",
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  controller.price = value;
                },
              ),
              QMemoField(
                label: "Description",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  controller.description = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductFormView> createState() => ProductFormController();
}
