import 'package:flutter/material.dart';

class Products extends StatelessWidget {
 final List<String> products;
  Products(this.products);
  // if consturctor take this . attrbuteNme so it take the pramter and save it into this Attrbute

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: products.map((element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/burger.png'),
                  Text(element)
                ],
              ),
            )).toList());
  }
}
