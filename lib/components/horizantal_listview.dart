import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/20.png',
            image_caption: 'Sneakers',
          ),

          Category(
            image_location: 'images/19.png',
            image_caption: 'Formal',
          ),

          Category(
            image_location: 'images/18.png',
            image_caption: 'Joggers',
          ),

          Category(
            image_location: 'images/17.png',
            image_caption: 'Sports',
          ),

          Category(
            image_location: 'images/16.png',
            image_caption: 'Ladies',
          ),

          Category(
            image_location: 'images/15.png',
            image_caption: 'Kids',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(    
     padding: const EdgeInsets.all(2.0),
     child: InkWell(onTap: (){},
     child: Container(
       width: 100.0,
            child: ListTile(
         title: Image.asset(image_location,width: 100.0, height: 80.0),
         subtitle: Container(
           alignment: Alignment.topCenter,
           child: Text(image_caption),
         )
       ),
     ),
     ),
    );
  }
}