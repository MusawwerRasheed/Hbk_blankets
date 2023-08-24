import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/sized_box.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Data/DataSource/Static/utils.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      width: 1.sw,
      child: ListView.separated(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){

        return SizedBox(
          height: 105.sp,
          width: 120.sp,

          child: Column(

            children: [

              AssetImageWidget(url: Utils.categoryDummyProduct[index].productImage.toString(),isCircle: true,radius: 40.sp,),
            CustomSizedBox.height(20),
              AppText(Utils.categoryDummyProduct[index].productName.toString(), style: Styles.circularStdBold(context,fontWeight: FontWeight.w500))
            ],

          ),
        );

      }, separatorBuilder: (context,index){

        return index!=0?CustomSizedBox.width(5):CustomSizedBox.width(0);

      }, itemCount: Utils.categoryDummyProduct.length),
    );
  }
}
