import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final double height;
  final double size;
  final Color? color;
  final FontWeight? weight;

  final TextAlign? align;

  final String text;
  final TextStyle? textStyle;

  const AppText({
    super.key,
    this.height = 19,
    this.size = 16,
    required this.text,
    this.textStyle,
    this.color,
    this.align,
    this.weight,
  });

  static AppText xxl({
    required String text,
    TextStyle? textStyle,
    Color? color,
    FontWeight? weight,
    TextAlign? align,
    Key? key,
  }) {
    return AppText(
      key: key,
      weight: weight,
      height: 50,
      text: text,
      align: align,
      textStyle: textStyle,
      color: color,
      size: 40.sp,
    );
  }

  static AppText xl({
    required String text,
    Color? textColor,
    TextStyle? textStyle,
    TextAlign? align,
    Color? color,
    FontWeight? weight,
    Key? key,
  }) {
    return AppText(
      key: key,
      height: 40,
      text: text,
      color: color,
      size: 35.sp,
      weight: weight,
      align: align,
    );
  }

  static AppText lg({
    required VoidCallback onTap,
    required String text,
    Color? color,
    TextAlign? align,
    TextStyle? textStyle,
    FontWeight? weight,
    Key? key,
  }) {
    return AppText(
      key: key,
      height: 24,
      size: 20.sp,
      align: align,
      text: text,
      textStyle: textStyle,
      weight: weight,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: textStyle ??
          GoogleFonts.inter(
            fontSize: size.sp,
            fontWeight: weight,
            height: height / size,
            color: color,
          ),
    );
  }
}
