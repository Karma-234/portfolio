import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/extensions.dart';

class AppInputField extends StatelessWidget {
  final String hint;
  final String header;
  const AppInputField(
      {super.key, this.hint = 'Input', this.header = 'Teaxt Header'});

  @override
  Widget build(BuildContext context) {
    late final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Colors.blue),
    );
    late final focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 6, 91, 160),
      ),
    );
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          border: border,
          enabledBorder: border,
          focusedBorder: focusBorder),
    ).addHeader(header);
  }
}
