// import 'package:flutter/material.dart';
// import 'package:shopping_ui/constraints.dart';

// import '../models/product.dart';

// class ItemCard extends StatelessWidget {
//   final Products products;
//   final Function press;
//   //final Function press;
//   ItemCard({
//     Key? key,
//     required this.products,
//     required this.press,
//     //required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press(),
//       child: Column(
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(kDefaultPaddin),
//               // height: 180,
//               // width: 160,
//               decoration: BoxDecoration(
//                 color: products.color,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Hero(
//                 tag: "${products.id}",
//                 child: Image.asset(products.image),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
//             child: Text(
//               products.title,
//               style: TextStyle(color: kTextLightColor),
//             ),
//           ),
//           Text(
//             "\$${products.price}",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )
//         ],
//       ),
//     );
//   }
// }

// //Categories
import 'package:flutter/material.dart';

import 'package:shopping_ui/constraints.dart';
import 'package:shopping_ui/models/product.dart';
import 'package:shopping_ui/screens/details/detail_screen.dart';

class ItemCard extends StatelessWidget {
  final Products product;
  //final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: products[0],
            ),
          ),
        );
      },
      //onTap: press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
