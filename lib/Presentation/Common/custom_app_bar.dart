import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Application/NavigationService/navigation.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/BottomNavigationScreen/custom_drawer.dart';
import 'package:hbk/Presentation/Widgets/Notifications/notification_screen.dart';
import 'package:hbk/Presentation/Widgets/search/search.dart';
import 'app_text.dart';
import 'image_widgets.dart';

 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
 

 

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
   
  final String? title;
  bool isHome;
  bool isShowSearchbutton; 
  bool isShowNotificationButton;
  final VoidCallback? onBackTap;

  CustomAppBar({key, this.title,    this.isHome = false, this.isShowSearchbutton = true, this.isShowNotificationButton = true,
     this.onBackTap})      : preferredSize = const Size.fromHeight(65),
        super(key: key) {
            // TODO: implement CustomAppBar
           
          }




  @override
  final Size preferredSize;

  @override
  CustomAppBarState createState() => CustomAppBarState();
 
}

class CustomAppBarState extends State<CustomAppBar> {


  @override
  Widget build(BuildContext context) {
     
    return 
    
    AppBar(
       
      elevation: 0.1,
      
      shadowColor: Color.fromARGB(31, 201, 69, 69),
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading:  GestureDetector(
        onTap: widget.onBackTap,
        behavior: HitTestBehavior.opaque,
        child: Center(child: SvgPicture.asset(Assets.sideMenuIcon,width: 25.w,height: 25.h,fit: BoxFit.fitHeight,)),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 5).r,
        child: AppText(
          widget.title??"HBK",
          style: Styles.circularStdBold(
            context,
            fontSize: 19.sp,
          ),
        ),
      ),
      actions: [
        
        

   widget.isShowSearchbutton
        ? GestureDetector(
            onTap: () {
              Navigate.to(context, const SearchScreen());
            },
            child: SvgPicture.asset(
              Assets.searchIcon,
              height: 20.h,
              width: 20.w,
            ),
          )
        : SizedBox(),

        SizedBox(width: 20.sp,),

        SizedBox(width: 10.sp,),

widget.isShowNotificationButton?
        GestureDetector(
          onTap: (){
            Navigate.to(context, const NotificationScreen());
          },
            child: SvgPicture.asset(Assets.notificationIcon,height: 20.h,width: 20.w,)):
            SizedBox(), 

            
        SizedBox(width: 20.sp,),

        
      ],
    );   
     
  }
}

   
      
 
 