import 'package:first_app/Pages/Home.dart';
import 'package:first_app/Pages/Product.dart';
import 'package:flutter/material.dart';
import 'Pages/Product.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);
  // if consturctor take this . attrbuteNme so it take the pramter and save it into this Attrbute
  Widget _BuiledProductItems(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        Image.asset('assets/burger.png'),
        Text(products[index]),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Details'),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(),
                    ),
                  ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _BuiledProductItems, itemCount: products.length)
        : Center(
            child: Text("No Product Found"),
          );
  }
}
