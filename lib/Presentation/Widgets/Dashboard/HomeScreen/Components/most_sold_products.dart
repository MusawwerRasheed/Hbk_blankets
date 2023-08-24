 import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';

 import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/product_added_dialog_box.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/product_card.dart';


class MostSoldProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
       
        child: Row(
          children: [
            ProductCard(
              image: 'assets/images/hbkproduct.jpg',
              title: 'Belpla Teenagers 1 ply single Beb Blanket',
              price: 'Rs 5490',
            ),
            ProductCard(
              image: 'assets/images/hbkproduct.jpg',
              title: 'Belpla Teenagers 1 ply single Beb Blanket',
              price: 'Price: \$29.99',
            ),
            // Add more ProductCard widgets here as needed
          ],
        ),
      ),
    );
  }
}

 