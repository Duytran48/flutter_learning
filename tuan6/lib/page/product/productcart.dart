import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../conf/const.dart';
import 'package:provider/provider.dart';

import '../../data/model/product_viewmodel.dart';
import '../../data/model/productmodel.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({Key? key}) : super(key: key);

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  var lstProStr = "";
  List<ProductModel> itemsList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Danh sách hàng hóa đã chọn",
          style: TextStyle(
            fontSize: 24,
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: Consumer<ProductsVM>(
            builder: (context, value, child) =>
                Scaffold(
                  body: SafeArea(
                    child: Scaffold(
                      body: ListView.builder(
                          itemCount: value.lst.length,
                          itemBuilder: (context, index) {
                            return itemListView(value.lst[index]);
                          }),
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }

  Widget itemListView(ProductModel productModel) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12), // Bo tròn ảnh
            child: Image.asset(
              uri_product_img + productModel.img!,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.image),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.name ?? '',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  NumberFormat('###,###.###').format(productModel.price),
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                Text(
                  productModel.desc!,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

