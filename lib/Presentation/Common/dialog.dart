import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';

import 'Dialogs/successfull_dialog.dart';

class CustomDialog {
  static Future<void> dialog(BuildContext context, Widget child) async {
    return showDialog<void>(
      context: context,
      barrierColor: Colors.black12,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(15).r,
          elevation: 0.0,
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10).r,
          ),
          child: child,
        );
      },
    );
  }

  static Future<void> iosDialog(
      BuildContext context, Widget child, String title) async {
    return showDialog<void>(
      context: context,
      barrierColor: Colors.black12,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: Styles.circularStdBold(context, fontSize: 18.sp),
          ),
          content: child,
        );
      },
    );
  }

  // static Future<void> loadingDialog(BuildContext context,
  //     {Widget? child, bool? barrierDismissible}) async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierColor: Colors.black12,
  //     barrierDismissible: barrierDismissible ?? false,
  //     builder: (BuildContext context) {
  //       return LoadingDialog.show(child: child);
  //     },
  //   );
  // }

  static Future<void> successDialog(BuildContext context,
      {required String? title,
      required String? message,
      bool? barrierDismissible}) async {
    return showDialog<void>(
      context: context,
      barrierColor: Colors.black12,
      barrierDismissible: barrierDismissible ?? true,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(15).r,
          elevation: 0.0,
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10).r,
          ),
          child: SuccessFulDialog.show(
              context: context, title: title, message: message),
        );
      },
    );
  }

  // static Future<void> errorDialog(BuildContext context,
  //     {required String? title,
  //     required String? message,
  //     bool? barrierDismissible}) async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierColor: Colors.black12,
  //     barrierDismissible: barrierDismissible ?? true,
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         insetPadding: const EdgeInsets.all(15).r,
  //         elevation: 0.0,
  //         backgroundColor: AppColors.whiteColor,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10).r,
  //         ),
  //         child: ErrorDialog.show(
  //             context: context, title: title, message: message),
  //       );
  //       //return ErrorDialog.show(context: context, title: title, message: message);
  //     },
  //   );
  // }

  // static show(BuildContext context, VoidCallback? onTap) {
  //   return CustomDialog.iosDialog(
  //       context,
  //       SizedBox(
  //         height: 50.h,
  //         // width: 130.w,
  //         child: Column(
  //           // physics: const NeverScrollableScrollPhysics(),
  //           //shrinkWrap: true,
  //           children: [
  //             // Padding(
  //             //   padding: const EdgeInsets.symmetric(vertical: 10).h,
  //             //   child: Text(
  //             //     'Logout',
  //             //     style: Styles.latoBold(context, fontSize: 22.sp),
  //             //   ),
  //             // ),
  //             SizedBox(
  //               height: 5.h,
  //             ),
  //             //Divider(color: AppColors.primaryColor,height: 2.sp,thickness: 1,),
  //             SizedBox(
  //               height: 2.h,
  //             ),
  //             Expanded(
  //               child: Row(
  //                 //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: [
  //                   //   SizedBox(width: 40.sp,),
  //                   Expanded(
  //                     child: CustomButton(
  //                       onTap: () {
  //                         Navigator.of(context).pop(true);
  //                       },
  //                       text: "Cancel",
  //                       bgColor: AppColors.whiteColor,
  //                       textColor: AppColors.greyColor,
  //                       horizontalPadding: 30.w,
  //                       verticalPadding: 8.sp,
  //                     ),
  //                   ),
  //
  //                   SizedBox(
  //                     width: 5.sp,
  //                   ),
  //                   //  SizedBox(width: 10,),
  //                   CustomButton(
  //                     onTap: onTap!,
  //                     text: "Confirm",
  //                     horizontalPadding: 30.w,
  //                     textColor: AppColors.blackColor,
  //                     // verticalPadding: 8.sp,
  //                   )
  //                 ],
  //               ),
  //             )
  //           ],
  //         ),
  //       ).animate().fade(),
  //       'Are You Sure want to delete account?');
  // }
}
