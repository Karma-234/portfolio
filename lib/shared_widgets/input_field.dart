import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/extensions.dart';

class AppInputField extends StatelessWidget {
  final String hint;
  final String header;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  const AppInputField(
      {super.key,
      this.hint = 'Input',
      this.header = 'Teaxt Header',
      this.controller,
      this.obscureText = false,
      this.onChanged,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    late final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Color.fromARGB(255, 6, 91, 160)),
    );
    late final focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(
        color: Colors.blue,
      ),
    );
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hint,
          suffixIcon: suffixIcon,
          border: border,
          enabledBorder: border,
          focusedBorder: focusBorder),
    ).addHeader(header);
  }
}
