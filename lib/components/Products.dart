import 'package:first_app/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'Name': 'New Sneakers' ,
      'picture':'images/10.jpg',
      'old_price': 120,
      'price':90,
    },

    {
      'Name': 'Formal Shoes' ,
      'picture':'images/8.jpg',
      'old_price': 120,
      'price':90,
    },

    {
      'Name': 'New Joggers' ,
      'picture':'images/1.jpg',
      'old_price': 120,
      'price':90,
    },

    {
      'Name': 'Informal' ,
      'picture':'images/9.jpg',
      'old_price': 120,
      'price':90,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prod_name: product_list[index]['Name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
  }
}


class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name, 
      child: Material(
        child: InkWell(onTap:()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new ProductDetails(
          prod_details_name: prod_name,
          prod_details_new_price: prod_price,
          prod_details_old_price: prod_old_price,
          prod_details_picture: prod_picture,
        )
        )
        ),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: Row(children: <Widget>[
              Expanded(child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, color:Colors.pink),),
              ),
              Text("\$${prod_price}",style: TextStyle(fontWeight: FontWeight.bold, color:Colors.pink),),
            ],)
          ),
          child: Image.asset(prod_picture,
          fit:BoxFit.cover),
        ),
        )
        )
      ),
    );
  }
}
