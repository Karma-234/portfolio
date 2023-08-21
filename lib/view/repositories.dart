import 'package:auto_route/auto_route.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/routes/app_router.gr.dart';
import 'package:portfolio/shared_widgets/app_button.dart';
import 'package:portfolio/shared_widgets/app_text.dart';
import 'package:portfolio/shared_widgets/details_widget.dart';
import 'package:portfolio/utils/app_function.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/view_model/repositories/repositories.dart';

@RoutePage()
class RepositoryView extends StatelessWidget {
  const RepositoryView({super.key});

  @override
  Widget build(BuildContext context) {
    late final state = RepositoriesState();
    state.getRepository();

    return Scaffold(
      appBar: AppBar(
        title: const AppText(text: 'Github Profile'),
      ),
      body: Observer(builder: (context) {
        return SafeArea(
          minimum: EdgeInsets.all(16.r),
          child: state.isLoading
              ? const Center(
                  child: CupertinoActivityIndicator(animating: true),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: state.err != null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    if (state.err != null)
                      AppText(text: 'An error occurred \n\n ${state.err}'),
                    if (state.err == null)
                      ...[
                        UserAccountsDrawerHeader(
                          currentAccountPicture: Icon(
                            FontAwesomeIcons.user,
                            size: 30.sp,
                          ),
                          onDetailsPressed: () =>
                              appLaunchUrl('www.linkedin.com/in/kamzy-dev'),
                          accountName: const AppText(text: 'Karma-234'),
                          accountEmail:
                              const AppText(text: 'busari1kamal@gmail.com'),
                        ),
                        const AppText(
                          text: 'Public Repositories',
                          weight: FontWeight.w600,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.pubRepos.length,
                            itemBuilder: (BuildContext c, int i) {
                              return DetailsWidget(
                                icon: FontAwesomeIcons.github,
                                title: state.pubRepos[i].name ?? '',
                                description: state.pubRepos[i].fullName,
                                url: state.pubRepos[i].gitUrl ?? '',
                              );
                            },
                          ),
                        ),
                        // const Spacer(),
                      ].separate(16.h),
                    AppButton(
                        color: Colors.red,
                        text: 'Logout',
                        onPress: () => context.router.pushAndPopUntil(
                            const LoginView(),
                            predicate: (route) => false)),
                  ],
                ),
        );
      }),
    );
  }
}
