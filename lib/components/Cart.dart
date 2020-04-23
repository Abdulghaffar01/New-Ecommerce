import 'package:first_app/main.dart';
import 'package:first_app/pages/Cart_details.dart';
import 'package:flutter/material.dart';
import 'package:first_app/pages/Home.dart';

import '../pages/Home.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.purple,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
            child: Text('Cart')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Cart_Products(),

      bottomNavigationBar: new Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total'),
                subtitle: Text("\$303"),
              ),
            ),

            Expanded(
              child: MaterialButton(onPressed: (){},
              child: Text('Check Out',style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
