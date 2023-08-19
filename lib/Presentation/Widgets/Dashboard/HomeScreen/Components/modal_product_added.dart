import 'package:flutter/material.dart';

class ProductAdded extends StatefulWidget {
  const ProductAdded({super.key});

  @override
  State<ProductAdded> createState() => _ProductAddedState();
}

class _ProductAddedState extends State<ProductAdded> {
  @override
  Widget build(BuildContext context) {

    return Center(child:  Text('product added success'),); 
  }
}