import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/BottomNavigationScreen/bottom_navigation_screen.dart';



class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  
   Drawer(
      child: Container(
        color:AppColors.primaryColor, 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(top:10.0),
                
                child: Row(

                  children: [
                    Column( children: 
                    [AssetImageWidget(url: 'assets/images/profileavatar.png',
                     width: 70,height: 70,)],),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Row( children: [    
      
                                                      
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical:9, horizontal:1 ),
                                  child: AppText(AppStrings.personname, style: Styles.circularStdRegular(
                                    context,fontWeight: FontWeight.w500,fontSize: 16, color: AppColors.whiteColor  ),),
                                ),
                    
                           ],),
                          Padding(
                            padding: const EdgeInsets.only(left:18.0),
                            child: Row(children: [  
                              
                                  AppText(AppStrings.personemail, style: Styles.circularStdRegular(
                                    context,fontWeight: FontWeight.w200,fontSize: 12, color: AppColors.whiteColor ),),
                                              ],),
                          ),
                     
                      
                   
                       
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             ListTileWidget(imagePath:'assets/images/Bag.svg' , title: AppStrings.order, onTap:(){} ,), 

              ListTileWidget(imagePath:'assets/images/Document.svg' , title: AppStrings.statement, onTap:(){} ,), 

              ListTileWidget(imagePath:'assets/images/Paper.svg' , title: AppStrings.pricelist, onTap:(){} ,), 
              
               ListTileWidget(imagePath:'assets/images/exclamation.svg' , title: AppStrings.rewards, onTap:(){} ,), 
               
                ListTileWidget(imagePath:'assets/images/survery.svg' , title: AppStrings.invoice, onTap:(){} ,), 

                 ListTileWidget(imagePath:'assets/images/salepolicy.svg' , title: AppStrings.salepolicies, onTap:(){} ,), 

                  ListTileWidget(imagePath:'assets/images/Send.svg' , title: AppStrings.feedback, onTap:(){} ,), 

                   ListTileWidget(imagePath:'assets/images/exclamation.svg' , title: AppStrings.FAQs, onTap:(){} ,), 

                    ListTileWidget(imagePath:'assets/images/call.svg' , title: AppStrings.contactus, onTap:(){} ,), 

        ListTileWidget(imagePath:'assets/images/Bag.svg' , title: AppStrings.customersuvery, onTap:(){} ,), 


ListTileWidget(imagePath:'assets/images/Bag.svg' , title: AppStrings.aboutus, onTap:(){} ,), 


ListTileWidget(imagePath:'assets/images/Logout.svg' , title: AppStrings.logout, onTap:(){} ,), 


           
          ],
        ),
      ),
    );
 

  }
}
