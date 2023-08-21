import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/di/locator.dart';
import 'package:portfolio/shared_widgets/app_text.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/view_model/login/login.dart';

import '../components/about_section.dart';

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
        body: const SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AboutSection(),
              ...[
                AppText(text: 'Projects'),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
