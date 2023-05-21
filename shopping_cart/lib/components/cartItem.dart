import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bloc/cart_items_block.dart';

class CartItem extends StatelessWidget {
  Map items = {};
  CartItem({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
            title: Text('${items['name']}'),
            subtitle: Text("\$${items['price']}"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                bloc.addToCart(items);
              },
            )));
  }
}
