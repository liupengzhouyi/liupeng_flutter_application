import 'package:flutter/material.dart';

class Product {

  const Product({this.name});

  final String name;

}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {


  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: new ObjectKey(product));

  final Product product;

  final bool inCart;

  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black45 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) {
      return null;
    } else {
      return new TextStyle(
        color: Colors.black45,
        decoration: TextDecoration.lineThrough,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },

      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),

      title: new Text(product.name, style: _getTextStyle(context),),
    );
  }


}