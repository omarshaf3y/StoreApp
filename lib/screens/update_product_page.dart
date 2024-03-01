import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';
  String? productName, desc, image;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFormTextField(
              onChanged: (data) {
                productName = data;
              },
              hintText: 'Product Name',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Description',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Price',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: 'Image',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              textButton: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}
