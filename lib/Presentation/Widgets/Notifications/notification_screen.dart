import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/circle_icon_button.dart';
import 'package:hbk/Presentation/Widgets/Notifications/Comonents/notification_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(automaticallyImplyLeading: false,
        title: AppText(
            style: Styles.circularStdBold(context, fontSize: 24.sp),
            AppStrings.notifications),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: CircleIconButton(icon: Icons.close, onPressed: () {
                Navigator.pop(context);
              }))
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
          itemBuilder: (context,index){
        return const NotificationTile();
      }),
    );
  }
}
