import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Card(
        elevation: 4.0,
        shadowColor: AppColors.whiteColor,
        color: AppColors.whiteColor,
        child: ListTile(
          tileColor: AppColors.whiteColor,
          leading: SvgPicture.asset(Assets.notificationImage),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText('Order Successful',
                  style: Styles.circularStdBold(context, fontSize: 16.sp)),
              AppText('1h ago',
                  style: Styles.circularStdBold(context, fontSize: 12.sp))
            ],
          ),
          subtitle: AppText(
            'Congratulations! Your order was successful. Get ready to enjoy your purchase!',
            style: Styles.circularStdMedium(context,
                color: Colors.grey, fontSize: 14.sp),
            maxLine: 3,
          ),
        ),
      ),
    );
  }
}

