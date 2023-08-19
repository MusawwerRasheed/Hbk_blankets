import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/sized_box.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/circle_icon_button.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';

class CartItemTile extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final int? pcsAvailable;
  final double? price;
  int? totalPrice;

  CartItemTile(
      {Key? key,
      this.imageUrl,
      this.title,
      this.pcsAvailable,
      this.price,
      this.totalPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Card(
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 10.w, bottom: 10.h, right: 10.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AssetImageWidget(
                    url: imageUrl!,
                    color: imageUrl!.contains('appLogo.png')
                        ? AppColors.primaryColor
                        : null,
                    width: 80.w,
                    height: 80.h,
                  ),
                  CustomSizedBox.width(5.w),
                  SizedBox(
                    width: 130.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title!,
                          style: Styles.circularStdMedium(context),
                          maxLine: 3,
                        ),
                        AppText(
                          'Pcs/Ctn $pcsAvailable',
                          style: Styles.circularStdMedium(context),
                          maxLine: 2,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Rs ',
                                  style: Styles.circularStdBold(context,
                                      fontSize: 16.sp)),
                              TextSpan(
                                  text: '$price',
                                  style: Styles.circularStdBold(context,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                      color: AppColors.primaryColor)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  CircleIconButton(
                    icon: Icons.close,
                    onPressed: () {},
                    width: 30.w,
                    height: 30.h,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Total',
                      style: Styles.circularStdMedium(context, fontSize: 16.sp),
                    ),
                    TextSpan(
                        text: ' Rs ',
                        style:
                            Styles.circularStdBold(context, fontSize: 16.sp)),
                    TextSpan(
                        text: '$totalPrice',
                        style: Styles.circularStdBold(context,
                            fontWeight: FontWeight.w900, fontSize: 20.sp)),
                  ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleIconButton(
                        icon: Icons.remove,
                        onPressed: () {},
                        width: 25.w,
                        height: 25.h,
                      ),
                      CustomSizedBox.width(10.w),
                      AppText('2', style: Styles.circularStdMedium(context)),
                      CustomSizedBox.width(10.w),
                      CircleIconButton(
                        icon: Icons.add,
                        onPressed: () {},
                        width: 25.w,
                        height: 25.h,
                        color: AppColors.primaryColor,
                        iconColor: AppColors.whiteColor,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
