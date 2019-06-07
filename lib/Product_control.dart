import 'package:flutter/material.dart';

class productContorl extends StatelessWidget{
    final Function addProduct;
    productContorl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct('Test');           
          },
          child: Text('Add Product'),
        );
  }

}