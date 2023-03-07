import 'package:flutter/material.dart';
import 'package:haiku_generator/widget/shimmer_loading_anim.dart';

class HaikuPage extends StatefulWidget {
  const HaikuPage({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  State<HaikuPage> createState() => _HaikuPageState();
}

class _HaikuPageState extends State<HaikuPage> {
  List<String> listProduct = [];

  String haikuText = '';
  String productName = 'Google Search';

  getListProduct() async {
    // TODO: (API)
    List<String> _listProduct = [
      'Google Search',
      'YouTube',
      'Android',
      'Google Maps',
      'GMail'
    ];
    setState(() {
      listProduct = _listProduct;
    });
  }

  getHaikuText(String productName) async {
    // TODO: (API)
    Map<String, String> _haikuText = {
      'Google Search':
          "Here is a long haiku about Google Search: \n\nGoogle Search is great \nFor finding what you need \nAnswer at your fingertips \n\nGoogle Search is vast \nWith information overload \nGoogle Search to the rescue \n\nGoogle Search is fast \nIt can find what you're looking for \nIn just a few seconds \n\nGoogle Search if free \nSo you can use it for anything \nLarge or small \n\nGoogle Search is awesome \nIt'sthe best search engine \nOn the internet",
      'YouTube': 'Here is a long haiku about YouTube:',
      'Android': 'Here is a long haiku about Android:',
      'Google Maps': 'Here is a long haiku about Google Maps:',
      'GMail': 'Here is a long haiku about GMail:'
    };
    setState(() {
      haikuText = _haikuText[productName].toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getListProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _buildTopView(),
                const SizedBox(
                  height: 10.0,
                ),
                _buildBottomView()
              ],
            )),
      ),
    );
  }

  Column _buildTopView() {
    return Column(
      children: <Widget>[
        Text(
          widget.subTitle,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 150.0,
          child: DropdownButton<String>(
            items: listProduct.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(productName.toString(), style: const TextStyle(color: Colors.deepPurpleAccent)),
            underline: Container( height: 1, color: Colors.deepPurpleAccent,),
            onChanged: (value) {
              setState(() {
                productName = value!;
                haikuText = '';
              });
            },
            isExpanded: true,
          ),
        ),
        GestureDetector(
          onTap: () => getHaikuText(productName.toString()),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
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
        )
      ],
    );
  }

  Expanded _buildBottomView() {
    return Expanded(
      child: haikuText.isNotEmpty
          ? Container(
              // color: Colors.amberAccent.shade100,
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
