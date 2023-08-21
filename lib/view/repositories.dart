import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/shared_widgets/app_text.dart';
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
                  children: state.err != null
                      ? [
                          AppText(text: 'An error occurred \n\n ${state.err}'),
                        ]
                      : [
                          const UserAccountsDrawerHeader(
                            accountName: AppText(text: 'Karma-234'),
                            accountEmail:
                                AppText(text: 'busari1kamal@gmail.com'),
                          ),
                          const AppText(
                            text: 'Certifications',
                            weight: FontWeight.w600,
                          ),
                        ],
                ),
        );
      }),
    );
  }
}
