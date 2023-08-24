import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/sized_box.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Data/DataSource/Static/utils.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/custom_app_bar.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/CartScreen/Components/cart_item_tile.dart';




class CartScreen extends StatelessWidget {
  final PageController? pageController;
  const CartScreen({super.key,this.pageController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 15.h,left: 10.w,right: 10.w),
      child: Column(
        children: [
         CustomAppBar(title: AppStrings.cart, isShowNotificationButton: false, isShowSearchbutton: false,),
          Expanded(
            child: ListView.separated(itemBuilder: (context,index){
              return CartItemTile(
                imageUrl: Utils.cartItems[index].image,
                title: Utils.cartItems[index].title,
                pcsAvailable: Utils.cartItems[index].pcsAvailable,
                price: Utils.cartItems[index].price,
              );

            }, separatorBuilder: (context,index){
              return SizedBox(
                height: 20.h,
              );

            }, itemCount: Utils.cartItems.length),
          )
        ],
      ),
    );
    //   Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
    //   child: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: <Widget>[
    //           AppText(
    //             AppStrings.accountBalance,
    //             style: Styles.circularStdRegular(context,
    //                 fontWeight: FontWeight.w500, fontSize: 16),
    //           ),
    //           RichText(
    //               text: TextSpan(children: [
    //             TextSpan(
    //                 text: 'Rs ',
    //                 style: Styles.circularStdBold(context, fontSize: 16.sp)),
    //             TextSpan(
    //                 text: '50,490 ',
    //                 style: Styles.circularStdBold(context,
    //                     fontWeight: FontWeight.w900, fontSize: 20)),
    //           ]))
    //         ],
    //       ),
    //       Expanded(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             SvgPicture.asset(Assets.cart),
    //             CustomSizedBox.height(20.h),
    //             AppText('Your cart is empty',
    //                 style: Styles.circularStdBold(context, fontSize: 22.sp)),
    //             CustomSizedBox.height(10.h),
    //             AppText(
    //               'Explore different products and buy your favourite one',
    //               style: Styles.circularStdMedium(context),
    //               maxLine: 2,
    //               textAlign: TextAlign.center,
    //             ),
    //             CustomSizedBox.height(30.h),
    //             CustomButton(
    //               onTap: () {
    //                pageController?.jumpToPage(2);
    //               },
    //               text: 'Explore',
    //               leadingIcon: Assets.shoppingCart,
    //               bgColor: AppColors.whiteColor,
    //               textColor: AppColors.primaryColor,
    //             )
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
