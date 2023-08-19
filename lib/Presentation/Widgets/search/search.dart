 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/circle_icon_button.dart';
import 'package:hbk/Presentation/Widgets/Notifications/Comonents/notification_tile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      
      appBar: AppBar(automaticallyImplyLeading: false,
      
      
        title: Container(
          child: AppText(
              style: Styles.circularStdBold(context, fontSize: 24.sp),
              AppStrings.search),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: CircleIconButton(width: 35, height: 35, icon: Icons.close, onPressed: () {
                Navigator.pop(context);
              }))
        ],
        centerTitle: true,
        backgroundColor: Colors.white, 
        elevation: 0,
      ),
   



   body:  
     Center(
       child:
       
        Padding(
          padding: const EdgeInsets.only(bottom: 338.0),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              
              child: Container(
              decoration: BoxDecoration(color: AppColors.whiteColor,  
              boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
              borderRadius: BorderRadius.circular(50) ),
              
              // SvgPicture.asset(Assets.searchIcon,height: 20.h,width: 20.w,)),
              
              child:  TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SvgPicture.asset(Assets.searchIconInput),
                   ),   
                                 hintText: 'Search Products', 
                                 
                                 ), 
            
            
                 
                 
                  
                
              )),
            ),
          ),
        ),
     ),

    
    );
  }
}
