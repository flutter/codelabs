import 'package:flutter/material.dart';
import 'package:haiku_generator/controller/poem_controller.dart';
import 'package:haiku_generator/controller/product_controller.dart';
import 'package:haiku_generator/widgets/shimmer_loading_anim.dart';

import 'domain/models/product.dart';

class HaikuPage extends StatefulWidget {
  const HaikuPage({super.key, required this.title});

  final String title;

  @override
  State<HaikuPage> createState() => HaikuPageState();
}

class HaikuPageState extends State<HaikuPage> {
  List<Product> listProduct = [];
  final ProductController productController = ProductController();
  final PoemController poemController = PoemController();

  String haikuText = '';
  String productName = 'Google Search';

  String subTitle = 'Choose a Google product here:';

  Future getProductData() async {
    var productData = await productController.getProducts();
    setState(() {
      listProduct = productData;
    });
  }

  Future getHaikuTextData(String productName) async {
    var poemData = await poemController.getPoem(productName);
    setState(() {
      haikuText = poemData;
    });
  }

  @override
  void initState() {
    super.initState();
    getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              buildTopView(),
              const SizedBox(height: 10.0),
              buildBottomView(),
            ],
          ),
        ),
      ),
    );
  }

  Column buildTopView() {
    return Column(
      children: <Widget>[
        Text(
          subTitle,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(
          width: 150.0,
          child: DropdownButton<Product>(
            items:
                listProduct.map((Product value) {
                  return DropdownMenuItem<Product>(
                    value: value,
                    child: Text(value.productName),
                  );
                }).toList(),
            hint: Text(
              productName.toString(),
              style: const TextStyle(color: Colors.deepPurpleAccent),
            ),
            underline: Container(height: 1, color: Colors.deepPurpleAccent),
            onChanged: (value) {
              setState(() {
                productName = value!.productName;
                haikuText = '';
              });
            },
            isExpanded: true,
          ),
        ),
        FilledButton(
          onPressed: () => getHaikuTextData(productName.toString()),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: const Text(
            'Generate haiku!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Expanded buildBottomView() {
    return Expanded(
      child:
          haikuText.isNotEmpty
              ? Container(
                decoration: BoxDecoration(
                  color: Colors.amberAccent.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      haikuText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              )
              : ShimmerLoadingAnim(
                isLoading: true,
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
    );
  }
}
