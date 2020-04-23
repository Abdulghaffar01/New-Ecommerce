import 'dart:ffi';

import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var products_on_the_cart = [
    {
      'name': 'New Sneakers' ,
      'picture':'images/10.jpg',
      'price':90,
      "size":"9",
      "Color":"red",
      "Quantity": "1",
    },

    {
      'name': 'Formal Shoes' ,
      'picture':'images/8.jpg',
      'price':90,
      "size":"9",
      "Color":"red",
      "Quantity": "2"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index){
          return Cart_details_product(
            cart_product_name: products_on_the_cart[index]["name"],
            cart_product_picture: products_on_the_cart[index]["picture"],
            cart_product_price: products_on_the_cart[index]["price"],
            cart_product_size: products_on_the_cart[index]["size"],
            cart_product_color: products_on_the_cart[index]["Color"],
            cart_product_qty: products_on_the_cart[index]["Quantity"],
          );
    });
  }

}


class Cart_details_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;

  Cart_details_product({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_qty,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
     child: ListTile(
       leading: Image.asset(cart_product_picture, height: 100.0,width: 100.0,),
       
       title: Text(cart_product_name),
       subtitle: Column(
         children: <Widget>[
           Row(
             children: <Widget>[
             Padding(padding: const EdgeInsets.all(0.0),
             child: Text("Size:"),
             ),
             Padding(padding: const EdgeInsets.all(4.0),
             child: Text(cart_product_size, style: TextStyle(color: Colors.purple),),
             ),

              Padding(padding: const EdgeInsets.all(4.0),
             child: Text("Color:"),
             ),
             Padding(padding: const EdgeInsets.all(4.0),
             child: Text(cart_product_color, style: TextStyle(color: Colors.purple),),
             ),
             ],
           ),
           Container(
             alignment: Alignment.topLeft,
             child: Text("\$$cart_product_price",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0,color: Colors.purple),),
           )
         ],
       ),
       trailing: Column(
         children: <Widget>[
           IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
           Text(cart_product_qty),
           IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
         ],
       )
     ),
    );
  }
}