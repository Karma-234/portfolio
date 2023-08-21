import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTab extends StatelessWidget {
  final List<String> tabs;
  const ReusableTab({
    super.key,
    this.onTap,
    this.tabs = const [],
  });
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      margin: EdgeInsets.symmetric(horizontal: 70.w),
      padding: EdgeInsets.all(2.r),
      decoration: BoxDecoration(
        color: const Color(0xFFEAEAF1),
        borderRadius: BorderRadius.circular(26.r),
      ),
      child: TabBar(
        onTap: onTap,
        unselectedLabelStyle: GoogleFonts.inter(
          color: const Color(0xFF7F7EA6),
          fontSize: 12.sp,
          height: 15 / 12,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 12.sp,
          height: 15 / 12,
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(26.r),
          color: const Color(0xFF2A286A),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: const Color(0xFF7F7EA6),
        tabs: tabs.isNotEmpty
            ? tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList()
            : const [
                Tab(
                  text: 'User',
                ),
                Tab(
                  text: 'Guest',
                ),
              ],
      ),
    );
  }
}
