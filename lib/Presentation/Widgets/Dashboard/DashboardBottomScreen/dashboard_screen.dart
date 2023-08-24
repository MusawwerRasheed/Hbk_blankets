import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart/src/chart/bar_chart/bar_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/sized_box.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/custom_app_bar.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/BottomNavigationScreen/custom_drawer.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/DashboardBottomScreen/Componenets/bar_chart.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/DashboardBottomScreen/Componenets/blue_cards.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/DashboardBottomScreen/Componenets/white_cards.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/home_carousel.dart';




class Dashboard extends StatelessWidget {
  var scaffoldKey;

  //GlobalKey<ScaffoldState> scaffoldKey;
    Dashboard({  super.key, required this.scaffoldKey});

  @override
  
  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: AppColors.whiteColor,
        
       drawer: Drawer(),

     

//  appBar: CustomAppBar(onBackTap: (){
         
//           scaffoldKey.currentState!.openDrawer();
        
//         },),


        appBar: CustomAppBar(
          title: AppStrings.customerdashboard,
          isHome: false,
          isShowSearchbutton: false,
          isShowNotificationButton: false,
          onBackTap: () {
           
            scaffoldKey.currentState!.openDrawer();
          },
        ),
    

        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 04.sp),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomSizedBox.height(10),

                  ///Top Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AppText(
                        AppStrings.accountBalance,
                        style: Styles.circularStdRegular(context,
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Rs ',
                            style: Styles.circularStdBold(context,
                                fontSize: 16.sp)),
                        TextSpan(
                            text: '50,490 ',
                            style: Styles.circularStdBold(context,
                                fontWeight: FontWeight.w900, fontSize: 20)),
                      ]))
                    ],
                  ),

                  CustomSizedBox.height(20.h),
                  Row(
                    children: [
                      CustomSizedBox.width(10.w),
                      Column(
                        children: [
                          AppText(
                            'Sale Person',
                            style: Styles.circularStdRegular(context,
                                color: AppColors.greyColor),
                          )
                        ],
                      ),
                      CustomSizedBox.width(60.w),
                      Column(
                        children: [
                          AppText(
                            'Group',
                            style: Styles.circularStdRegular(
                              context,
                              color: AppColors.greyColor,
                            ),
                          )
                        ],
                      ),
                      CustomSizedBox.width(60.w),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: AppText(
                              'Loyal',
                              style: Styles.circularStdRegular(context,
                                  color: AppColors.greyColor),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  CustomSizedBox.height(10.h),
                  Row(
                    children: [
                      CustomSizedBox.width(10.w),
                      Column(
                        children: [
                          AppText(
                            'Management',
                            style: Styles.circularStdBold(context),
                          )
                        ],
                      ),
                      CustomSizedBox.width(40.w),
                      Column(
                        children: [
                          AppText(
                            'Common, B, H',
                            style: Styles.circularStdBold(context),
                          )
                        ],
                      ),
                      CustomSizedBox.width(40.w),
                      Column(
                        children: [
                          AppText(
                            'No',
                            style: Styles.circularStdBold(context),
                          )
                        ],
                      )
                    ],
                  ),

                  CustomSizedBox.height(20),

                  //barchar section

                  
                  Container(
                        width: MediaQuery.of(context).size.width,
                        child: FractionallySizedBox(
                          widthFactor: 1.04,
                          child: CustomBarChart())),
      
             

                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: 
                        BlueCards()),
                  ),

                  CustomSizedBox.height(20),

                  FractionallySizedBox(
                    widthFactor: 1.04,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height:  400,
                      child: WhiteCards(),
                    ),
                  ),
 

                  CustomSizedBox.height(20),
                ],
              ),
            )
            )
            )
            ;

  }
}
