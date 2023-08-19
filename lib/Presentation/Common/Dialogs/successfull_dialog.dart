import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_text.dart';

class
SuccessFulDialog{

 

  static Widget
  
  show (
      {
  required BuildContext context, required String? title, required String? message ,double? height,double? width

}){


return Container(
height: height?? 240.sp,
  width: width ?? 290.sp,
  decoration:  BoxDecoration(

    borderRadius: BorderRadius.circular(10.sp),


  ),

  child: ListView(
    shrinkWrap: true,
    physics:const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.symmetric(horizontal: 30.sp),
    children: <Widget>[
      SizedBox(height: 30.sp,),
  Center(child: Image.asset(Assets.passwordSuccessFull,height: 85.sp,width: 85.sp,),),
      SizedBox(height: 10.sp,),
      Center(child: FittedBox(child: AppText(title!, style: Styles.circularStdBold(context,fontSize: 22.sp),))),
      SizedBox(height: 10.sp,),
      AppText(message!, style: Styles.circularStdRegular(context,fontSize: 12.sp),maxLine: 2,textAlign: TextAlign.center,)
    ],
  ),


);


}

showOrderConfirmDialog() {

}


}