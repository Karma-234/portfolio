import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/di/locator.dart';
import 'package:portfolio/core/routes/app_router.gr.dart';
import 'package:portfolio/shared_widgets/app_text.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/view_model/login/login.dart';

import '../components/about_section.dart';
import '../shared_widgets/details_widget.dart';

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
            tooltip: 'View repositories',
            onPressed: () => context.router.push(const RepositoryView()),
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
          automaticallyImplyLeading: false,
          title: AppText(
            text: 'Hi ${locator<LoginState>().userName}',
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const AboutSection(),
              ...<Widget>[
                const AppText(
                  text: 'Projects',
                  weight: FontWeight.w600,
                ),
                ...projects
                    .map(
                      (e) => DetailsWidget(
                        title: e,
                        url: projectUrls[projects.indexOf(e)],
                      ),
                    )
                    .toList()
              ].separate(5.h).addPadding(
                    EdgeInsets.symmetric(horizontal: 16.w),
                  ),
              ...<Widget>[
                const AppText(
                  text: 'Certifications',
                  weight: FontWeight.w600,
                ),
                ...certifications
                    .map(
                      (e) => DetailsWidget(
                        title: e,
                        icon: FontAwesomeIcons.certificate,
                        url: certificationUrls[certifications.indexOf(e)],
                        description: 'Tap to verify',
                      ),
                    )
                    .toList()
              ].separate(5.h).addPadding(
                    EdgeInsets.symmetric(horizontal: 16.w),
                  ),
              Gap(20.h),
            ].separate(5.h),
          ),
        ),
      ),
    );
  }
}
