import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';

SnackBar successSnackBar({required String? text,required BuildContext context ,required Color? bgColor, TextStyle? textStyle})
{

  return  SnackBar(
    content: Text(
      text!,
      style:
      textStyle ?? Styles.circularStdMedium(context, color: AppColors.whiteColor),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    duration: const Duration(milliseconds: 1100),
    backgroundColor:
    bgColor ?? Theme.of(context).snackBarTheme.backgroundColor,
    behavior: SnackBarBehavior.floating,
    shape: Theme.of(context).snackBarTheme.shape,
  );
}
