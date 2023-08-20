import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final double height;
  final double size;
  final Color? color;

  final TextAlign? align;

  final String text;
  final TextStyle? textStyle;

  const AppText({
    super.key,
    this.height = 19 / 16,
    this.size = 16,
    required this.text,
    this.textStyle,
    this.color,
    this.align,
  });

  static AppText xxl({
    required String text,
    TextStyle? textStyle,
    Color? color,
    Key? key,
  }) {
    return AppText(
      key: key,
      height: 50 / 40,
      text: text,
      textStyle: textStyle ?? GoogleFonts.inter(),
      color: color ?? Colors.black,
      size: 40.sp,
    );
  }

  static AppText xl({
    required String text,
    Color? textColor,
    TextStyle? textStyle,
    TextAlign? align,
    Color? color,
    Key? key,
  }) {
    return AppText(
      key: key,
      height: 40 / 35,
      text: text,
      color: color,
      size: 35.sp,
      align: align,
    );
  }

  static AppText lg({
    required VoidCallback onTap,
    required String text,
    Color? color,
    Key? key,
  }) {
    return AppText(
      key: key,
      height: 24 / 20,
      size: 20.sp,
      text: text,
      textStyle: GoogleFonts.inter(),
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
            height: height,
            color: color,
          ),
    );
  }
}
