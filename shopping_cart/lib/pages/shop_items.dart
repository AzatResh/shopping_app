import 'package:flutter/material.dart';

import '../bloc/cart_items_block.dart';
import '../components/cartItem.dart';

class ShopItems extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart App'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/checkout");
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ShopItemsWidget(),
    );
  }
}

class ShopItemsWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: bloc.allItems,
      stream: bloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data["shop items"].length > 0
            ? shopItemsListBuilder(snapshot)
            : Center(child: Text("All items in shop have been taken"));
      },
    );
  }
}

Widget shopItemsListBuilder(snapshot) {
  return ListView.builder(
    itemCount: snapshot.data["shop items"].length,
    itemBuilder: (BuildContext context, i) {
      return CartItem(items: snapshot.data["shop items"][i]);
    },
  );
}
