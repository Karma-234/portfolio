import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

extension ListGutter on List<Widget> {
  List<Widget> separate(double space) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, Gap(space), element],
        );
}

extension Header on TextFormField {
  addHeader(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Text(text), this].separate(6.h),
    );
  }
}
