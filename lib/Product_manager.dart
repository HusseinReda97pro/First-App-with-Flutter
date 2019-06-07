import 'package:flutter/material.dart';
import './Products.dart';
import './Product_control.dart';

class ProductManaer extends StatefulWidget {
  final String statrtingPeoduct;
  ProductManaer({this.statrtingPeoduct});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManaerState();
  }
}

class _ProductManaerState extends State<ProductManaer> {
  List<String> _Products = [];
  void _addProduct(String product) {
    setState(() {
      _Products.add(product);
    });
  }

  @override
  void initState() {
    if(widget.statrtingPeoduct != null){
    _Products.add(widget.statrtingPeoduct);
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: productContorl(_addProduct),
      ),
      Expanded(child: Products(_Products))
    ]);
  }
}
