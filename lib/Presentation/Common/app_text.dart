

import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final dynamic? fontSize; 
  final int? maxLine;
  const AppText(
    this.text, {
    super.key,
  this.style,
  this.fontSize,
    this.overflow,
    this.maxLine = 1,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: style,
    );
  }
}
