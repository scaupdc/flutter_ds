import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: "shopping car",
    home: MyApp(),
  ));
}

class Product {
  final String name;

  const Product(this.name);
}

typedef void ItemChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final ItemChangedCallback itemChangedCallback;
  final bool inCart;

  ShoppingListItem({Product product, this.inCart, this.itemChangedCallback})
      : this.product = product,
        super(key: ObjectKey(product));

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle() {
    if (!inCart) return null;
    return TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        itemChangedCallback(product, !inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  ShoppingList({this.products});

  @override
  State<StatefulWidget> createState() {
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  Set<Product> _car = Set<Product>();

  void _onItemChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _car.add(product);
      } else {
        _car.remove(product);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(ShoppingList oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: widget.products
          .map(
            (Product product) => ShoppingListItem(
                product: product,
                inCart: _car.contains(product),
                itemChangedCallback: _onItemChanged),
          )
          .toList(),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<Product> products = List<Product>();

  MyApp() {
    for (var i = 0; i < 40; i++) {
      products.add(Product('$i-product'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ShoppingList'),
        ),
        body: ShoppingList(products: products));
  }
}
