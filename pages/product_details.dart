import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/components/Cart.dart';

import 'package:first_app/pages/Home.dart';


class ProductDetails extends StatefulWidget {
  final prod_details_name;
  final prod_details_new_price;
  final prod_details_old_price;
  final prod_details_picture;

  ProductDetails({
    this.prod_details_name,
    this.prod_details_new_price,
    this.prod_details_old_price,
    this.prod_details_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.purple,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},

        child: Text("Iqra Shopping")),
        actions: <Widget>[
          new IconButton(icon: 
          Icon(Icons.search, color: Colors.white)
          , onPressed: (){}),

          new IconButton(icon: 
          Icon(Icons.shopping_cart),
           onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
           }),
        ],
          ),
          body:
       ListView(
        children: <Widget>[
          new Container(
            height:300.0,
            child: GridTile(child: Container(
              color: Colors.white,
              child: Image.asset(widget.prod_details_picture),
            ),
            footer: new Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(widget.prod_details_name,
                style: TextStyle(fontWeight: FontWeight.bold),
                ),

                title: Row(children: <Widget>[
                   Expanded(child: Text("\$${widget.prod_details_old_price}",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black, decoration: TextDecoration.lineThrough),),),
                  Expanded(child: Text("\$${widget.prod_details_new_price}",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),),
                ],),
              //  title: Text("\$${widget.prod_details_new_price}",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),
              //  subtitle: Text("\$${widget.prod_details_old_price}",style: TextStyle(color: Colors.black, decoration: TextDecoration.lineThrough),
             // )
            ),
            ),
          ),
          ),
          Row(
            children: <Widget> [
              Expanded(child: 
              new MaterialButton(onPressed: (){
                showDialog(context: context,
                builder: (context){
                  return new AlertDialog(
                    title: Text('Size'),
                    content: Text('Choose A Size'),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('Close'),
                      )
                    ],
                  );
                }
                );
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(children: <Widget>[
                Expanded(child: new
                Text('Size'),
                ),
                Expanded(child: new
                Icon(Icons.arrow_drop_down)
                ),
              ],)
              ),
              ),

                        Expanded(child: 
              new MaterialButton(onPressed: (){
                showDialog(context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text('Colors'),
                    content: Text('Choose A Color'),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('Close'))
                    ],
                  );
                }
                );
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(children: <Widget>[
                Expanded(child: new
                Text('Colors'),
                ),
                Expanded(child: new
                Icon(Icons.arrow_drop_down)
                ),
              ],)
              ),
              ),


                        Expanded(child: 
              new MaterialButton(onPressed: (){
                showDialog(context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text('Quantity'),
                    content: Text('Choose Quantity'),
                    actions: <Widget>[
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('Close'))
                    ],
                  );
                }
                );
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(children: <Widget>[
                Expanded(child: new
                Text('Qty'),
                ),
                Expanded(child: new
                Icon(Icons.arrow_drop_down)
                ),
              ],)
              ),
              ),
            ],
          ),
          // second button 
           Row(
            children: <Widget> [
              Expanded(child: 
              new MaterialButton(onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Buy Now')
              ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){},),
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red), onPressed: (){})
            ],
          ),

          ListTile(
            title: Text("Product Details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child:  Text('Product Name',style: TextStyle(color: Colors.blue),
              ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.prod_details_name),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product Brand',style: TextStyle(color: Colors.blue)),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text('XYZ'),
              )
            ],
          ),

            Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product Condition',style: TextStyle(color: Colors.blue)),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text('New')),
            ],
          ),

       // Container(
         //  child: Similar_Products(),
       // )
        ],
      ),
    );
  }
}