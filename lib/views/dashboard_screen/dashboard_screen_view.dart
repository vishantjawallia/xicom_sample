// ignore_for_file: use_key_in_widget_constructors

library dashboard_screen_view;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:xicom_sample/theme/palettes.dart';
import 'components/app_bar.dart';
import 'dashboard_screen_view_model.dart';

part 'dashboard_screen_mobile.dart';
part 'dashboard_screen_tablet.dart';
part 'dashboard_screen_desktop.dart';

// ignore: must_be_immutable
class DashboardScreenView extends StatelessWidget {
  static const routeName = '/dashboard_screen';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardScreenViewModel>.reactive(
      viewModelBuilder: () => DashboardScreenViewModel(),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _DashboardScreenMobile(viewModel),
          desktop: (_) => _DashboardScreenMobile(viewModel),
          tablet: (_) => _DashboardScreenMobile(viewModel),
        );
      },
    );
  }
}
