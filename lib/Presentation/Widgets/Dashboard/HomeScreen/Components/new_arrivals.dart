 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Application/NavigationService/navigation.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/Dialogs/successfull_dialog.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/modal_product_added.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/product_added_dialog_box.dart';
import 'product_card.dart';
 

 


class NewArrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Container(
   
        child: Row(         
          children: [
            ProductCard(
              image: 'assets/images/hbkproduct.jpg',
              title: 'Belplafdd Teenagers 1 ply single Beb Blanket',
              price: 'Rs 5490',
            ),         
            ProductCard(
                image: 'assets/images/hbkproduct.jpg', title: '', price: '',
              ),      
          ],
      ),
      ),
    );
  }
}
 
 

 



 
 
 







 
