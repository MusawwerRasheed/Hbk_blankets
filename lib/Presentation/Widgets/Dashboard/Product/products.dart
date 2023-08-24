import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/sized_box.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/custom_app_bar.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/DashboardBottomScreen/Componenets/bar_chart.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/DashboardBottomScreen/Componenets/blue_cards.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/DashboardBottomScreen/Componenets/white_cards.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/product_card.dart';

class ProductScreen extends StatelessWidget {
  final ValueNotifier<String> activeButton = ValueNotifier('');
  final ValueNotifier<bool> showContainer = ValueNotifier(false);
  var scaffoldKey;

  //GlobalKey<ScaffoldState> scaffoldKey;

  ProductScreen({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        drawer: Drawer(),

//  appBar: CustomAppBar(onBackTap: (){
//           scaffoldKey.currentState!.openDrawer();
//         },),

        appBar: CustomAppBar(
          title: AppStrings.allproducts,
          isHome: false,
          isShowSearchbutton: false,
          isShowNotificationButton: false,
          onBackTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 02.sp),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(50)),

                        // SvgPicture.asset(Assets.searchIcon,height: 20.h,width: 20.w,)),

                        child: TextField(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 145,
                        child: ElevatedButton(
                          // widthFactor: 123l
                          onPressed: () {
                            _showBottomSheet(context, 'Button 1');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 5, // Adding shadow
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/sort.svg'),
                              SizedBox(width: 8),
                              Text('Sort',
                                  style: TextStyle(color: Colors.black,)),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 16),
                      // Space between buttons
                      SizedBox(
                        width: 145,
                        child: ElevatedButton(
                          onPressed: () {
                            _showBottomSheet(context, 'Button 2');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 5, // Adding shadow
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(20), // Rounded corners
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/filter.svg'),
                              SizedBox(width: 8),
                              Text('Filter',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          AppStrings.onesixtyfiveproducts,
                          style: Styles.circularStdMedium(context),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ProductCard(
                                image: 'assets/images/hbkproduct.jpg',
                                title:
                                    'Belplafdd Teenagers 1 ply single Beb Blanket',
                                price: 'Rs 5490',
                              ),
                              ProductCard(
                                image: 'assets/images/hbkproduct.jpg',
                                title: '',
                                price: '',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ProductCard(
                                image: 'assets/images/hbkproduct.jpg',
                                title:
                                    'Belplafdd Teenagers 1 ply single Beb Blanket',
                                price: 'Rs 5490',
                              ),
                              ProductCard(
                                image: 'assets/images/hbkproduct.jpg',
                                title: '',
                                price: '',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  void _showBottomSheet(BuildContext context, String ButtonName) {
    activeButton.value = ButtonName;
    showContainer.value = !showContainer.value;

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return MyBottomSheetContent(showContainer, activeButton);
      },
    );
  }
}



class MyBottomSheetContent extends StatefulWidget {


  final ValueNotifier<String> ButtonName;
  final ValueNotifier<bool> showContainer;


  MyBottomSheetContent(this.showContainer, this.ButtonName);

  @override
  State<MyBottomSheetContent> createState() => _MyBottomSheetContentState();
}

class _MyBottomSheetContentState extends State<MyBottomSheetContent> {

            bool checkbox1 =false;
           bool   checkbox2 = false;
            bool checkbox3 = false;
            bool checkbox4 = false;
            double _sliderValue = 0.0;

  @override

  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: widget.showContainer,
        builder: (BuildContext context, bool value, Widget? child) {
          if (widget.ButtonName.value == 'Button 1') {
         
            return
            
             Container(
                
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),

              ),



              width: 100,
              height: 700,
             

              child: Padding(
                padding: const EdgeInsets.all(18.0),
              
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  
                  children: [
                    Center(
                      child: Container( 
                        color: Colors.grey,
                            width:80, height: 3,),
                    ), 
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 18),
                      child: Row(
                        children: [
                          
                          

                          AppText(
                            'Sort By',
                            style: Styles.circularStdBold(context),fontSize: 40,
                          )
                        ],
                      ),
                    ),
              



                   Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
              
              
              
                        Row(
 
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
              
                    AppText(AppStrings.mostrelevant, style: Styles.circularStdMedium(context)),
                    
                
                   Checkbox(
                    
                    value: checkbox1,
                    onChanged: (value) {
                      setState(() {
                        checkbox1 = value!;
                      });
                    },
                     shape: CircleBorder(),
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                  ),
                
                           
                          ],
                        ),
              
              
              
                      
              
              
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        AppText(AppStrings.lowtohigh, style: Styles.circularStdMedium(context)),
                Checkbox(
                  value: checkbox2,
                  onChanged: (value) {
                    setState(() {
                      checkbox2 = value!;
                    });
                  },
                   shape: CircleBorder(),
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                ),
                          
                          ],
                        ),
                           
              
              
              
              
              
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
              
                           AppText(AppStrings.hightolow, style: Styles.circularStdMedium(context)),
                Checkbox(
                  value: checkbox3,
                  onChanged: (value) {
                    setState(() {
                      checkbox3 = value!;
                    });
                  },
                   shape: CircleBorder(),
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                ),
                           
                          ],
                        ),










                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
              
                  AppText(AppStrings.newArrival, style: Styles.circularStdMedium(context)),
              
                Checkbox(
                  value: checkbox4,
                  onChanged: (value) {
                    setState(() {
                      checkbox4 = value!;
                    });
                  },
                   shape: CircleBorder(),
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                ),
                          
                          ],
                        ),
                        
              
              
                      ],
                    ),
              
              
                    SizedBox(height: 46),
                  ],
                ),
              ),
            );

          } 
          
          else if (widget.ButtonName.value == 'Button 2') {
            return  
            
             Container(
                
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),

              ),



              width: 100,
              height: 700,
             

              child: Padding(
                padding: const EdgeInsets.all(18.0),
              
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  
                  children: [
                    Center(
                      child: Container( 
                        color: Colors.grey,
                            width:80, height: 3,),
                    ), 
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 18),
                      child: Row(
                        children: [
                          
                          

                          AppText(
                            'Filter By',
                            style: Styles.circularStdBold(context),fontSize: 40,
                          ),

                          
                          
                        ],
                      ),
                      
                    ),
              

                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: AppText(AppStrings.pricerange, style: Styles.circularStdMedium(context, fontSize: 15),),
                        ), 


                  
              
                 Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: AppText(AppStrings.productcategory, style: Styles.circularStdMedium(context, fontSize: 15),),
                        ), 
  
                  ],
                ),
              ),
            );


          }
           else {
            return SizedBox();
          }
        });
  }
}



 





  
















  

 