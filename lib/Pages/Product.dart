import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Name'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text("Information"),
            RaisedButton(
              child: Text("Back"),
              onPressed: () => {Navigator.pop(context)},
            )
          ],
        )));
  }
}
