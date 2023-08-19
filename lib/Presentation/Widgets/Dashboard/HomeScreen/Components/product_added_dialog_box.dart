import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';




class ProductAddedToCart extends StatefulWidget {
  const ProductAddedToCart({super.key});

  @override
  State<ProductAddedToCart> createState() => _ProductAddedToCartState();
}

class _ProductAddedToCartState extends State<ProductAddedToCart> {
  @override
  Widget build(BuildContext context) {


    return   
    Dialog(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50), // Set the border radius
           ),
           child: Container(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30),
             ),
             padding: EdgeInsets.all(16),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Center(
                   child: AssetImageWidget(
                     url: Assets.addedtocart,
                     height: 80,
                     width: 80,
                   ),
                 ),
                 SizedBox(height: 16),
                 AppText(
                   AppStrings.oneproductadded,
                   style: Styles.circularStdBold(context, fontSize: 15),
                   textAlign: TextAlign.end,
                 ),
                 SizedBox(height: 8),
           
                 AppText(
                   AppStrings.oneproductaddednumbers,
                   style: Styles.circularStdBold(context, fontSize: 10),
                   textAlign: TextAlign.end,
                 ),
                 SizedBox(height: 18),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left:10.0),
                         child: AppText(
                           AppStrings.exploremore,
                           style: Styles.circularStdRegular(
                             context,
                             fontSize: 12,
                             color: AppColors.greyColor,
                           ),
                         ),
                       ),
                       Spacer(),
                       CustomButton(
           onTap: () {},
           // text: ('Cart', Styles.circularStdRegular(context, fontSize: 8)),   
           
           horizontalPadding: 20,
           verticalPadding: 7,
           leadingIcon: 'assets/images/Bag.svg',
            text: 'Cart',
            
            
             // Adjust the font size as needed
           ),
           
                     ],
                   ),
                 ),
               ],
             ),
           ),
           );
           
            
  }
}