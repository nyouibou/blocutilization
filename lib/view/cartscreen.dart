// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitledbloc/carts/bloc/cart_bloc.dart';
// import 'package:untitledbloc/models/Carts.dart';

// class MyCart extends StatelessWidget {
//   const MyCart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('My Cart'),
//         ),
//         body: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
//           if (state.clist == null || state.clist!.isEmpty) {
//             return Center(
//               child: Text('No items in the cart'),
//             );
//           }

//           return ListView.separated(
//             itemCount: state.clist!.length,
//             itemBuilder: (BuildContext context, int index) {
//               Carts cart = state.clist![index];
//               return Container(
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Cart ID: ${cart.id}"),
//                     Text("User ID: ${cart.userId}"),
//                     Text("Total Quantity: ${cart.totalQuantity}"),
//                     Text("Total Products: ${cart.totalProducts}"),
//                     Text("Discounted Total: ${cart.discountedTotal}"),
//                     SizedBox(height: 10),
//                     if (cart.products != null && cart.products!.isNotEmpty)
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: cart.products!.map((product) {
//                             return Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all()),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     CircleAvatar(
//                                       backgroundImage:
//                                           NetworkImage("${product.thumbnail}"),
//                                     ),
//                                     Text("Product ID: ${product.id}"),
//                                     Text("Product Name: ${product.title}"),
//                                     Text("Quantity: ${product.quantity}"),
//                                     Text("Price: ${product.price}"),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                     if (cart.products == null || cart.products!.isEmpty)
//                       Text('No products in this cart'),
//                   ],
//                 ),
//               );
//             },
//             separatorBuilder: (context, index) => SizedBox(
//               height: 10,
//             ),
//           );
//         }));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitledbloc/carts/bloc/cart_bloc.dart';
import 'package:untitledbloc/models/Carts.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Cart'),
        ),
        body: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
          if (state.clist == null || state.clist!.isEmpty) {
            return Center(
              child: Text('No items in the cart'),
            );
          }

          return ListView.separated(
            itemCount: state.clist!.length,
            itemBuilder: (BuildContext context, int index) {
              Carts cart = state.clist![index];
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cart ID: ${cart.id}"),
                    Text("User ID: ${cart.userId}"),
                    Text("Total Quantity: ${cart.totalQuantity}"),
                    Text("Total Products: ${cart.totalProducts}"),
                    Text("Discounted Total: ${cart.discountedTotal}"),
                    SizedBox(height: 10),
                    if (cart.products != null && cart.products!.isNotEmpty)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: cart.products!.map((product) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all()),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          NetworkImage("${product.thumbnail}"),
                                    ),
                                    Text("Product ID: ${product.id}"),
                                    Text("Product Name: ${product.title}"),
                                    Text("Quantity: ${product.quantity}"),
                                    Text("Price: ${product.price}"),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    if (cart.products == null || cart.products!.isEmpty)
                      Text('No products in this cart'),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
          );
        }));
  }
}
