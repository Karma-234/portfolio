import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/extensions.dart';

import '../shared_widgets/app_text.dart';
import '../utils/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 48, 112, 164),
      padding: EdgeInsets.all(12.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text.rich(
            const TextSpan(
              text: 'I\'m Busari Kamal and\n',
              children: [
                TextSpan(text: 'I build software solutions for businesses.'),
              ],
            ),
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: const Color.fromARGB(255, 244, 240, 240),
              fontSize: 24.sp,
              height: 28 / 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const AppText(
            text: 'About',
            color: Colors.white,
            weight: FontWeight.w500,
          ),
          const AppText(
            text: aboutMe,
            color: Colors.white,
          ),
        ].separate(16.h),
      ),
    );
  }
}
