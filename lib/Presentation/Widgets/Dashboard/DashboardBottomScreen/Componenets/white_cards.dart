import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
  
 

 class WhiteCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [

            Column(
              

              children: [
                CardItem(
                  icon: 'assets/images/ChartBar.svg',  
                  title: 'Running Status',
                  subtitle: 'Blue',
                  isBold: true,
                ),


                CardItem(
                  icon: 'assets/images/Note.svg',  
                  title: 'Sale Required',
                  subtitle: 'Rs 2500,000',
                  isBold: true,
                ),

                CardItem(
                  icon: 'assets/images/ChartPieSlice.svg',   
                  subtitle: 'Rs 2,500,000',
                  title: 'Sale of Session',
                  isBold: true,
                ),
              ],
            ),
            Column(
              children: [
                CardItem(
                  icon: 'assets/images/Webcam.svg',  
                  title: 'Next Target',
                  subtitle: 'Bronze',
                  isBold: true,
                ),
                CardItem(
                  icon: 'assets/images/Trophy.svg',  
                  title: 'Total Winning',
                  subtitle: 'Rs 0',
                  isBold: true,
                ),
                CardItem(
                  icon: 'assets/images/Notepad.svg',  
                  title: 'Pending Orders',
                  subtitle: 'Rs 0',
                  isBold: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class CardItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final bool isBold;



  CardItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isBold = true,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,  
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),



        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),



      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,  
            radius: 20,
            child: SvgPicture.asset(
              icon,
              width: 30,
              height: 30,
              color: Colors.white,
            ),
          ),

          




          
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,


            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.primaryColor,  
                  fontSize: 16,
                  fontWeight: isBold ? FontWeight.normal : FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),

              Text(
                subtitle,
                style: TextStyle(
                  color: AppColors.primaryColor,  
                  fontSize: 14,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),

              
            ],
          ),
        ],
      ),
    );
  }
}
 