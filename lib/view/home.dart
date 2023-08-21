import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/di/locator.dart';
import 'package:portfolio/shared_widgets/app_text.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/view_model/login/login.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        floatingActionButton: Container(
          height: 50.h,
          width: 50.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(100.r),
            color: Colors.blue,
          ),
          child: IconButton(
            onPressed: () {},
            enableFeedback: true,
            icon: Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 35.sp,
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          title: AppText(
            text: 'Hi ${locator<LoginState>().userName}',
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color.fromARGB(255, 48, 112, 164),
              padding: EdgeInsets.all(12.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text.rich(
                    const TextSpan(
                      text: 'I\'m Busari Kamal and\n',
                      children: [
                        TextSpan(
                            text: 'I build software solutions for businesses.'),
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
            ),
          ],
        ),
      ),
    );
  }
}
