import 'package:flutter/material.dart';
import './Products.dart';

class ProductManaer extends StatefulWidget {
  final String statrtingPeoduct;
ProductManaer(this.statrtingPeoduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManaerState();
  }
}

class _ProductManaerState extends State<ProductManaer> {
  List<String> _Products = [];
  @override
  void initState() {
    _Products.add(widget.statrtingPeoduct);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _Products.add('burger22');
            });
          },
          child: Text('Add Product'),
        ),
      ),
      Products(_Products)
    ]);
  }
}
