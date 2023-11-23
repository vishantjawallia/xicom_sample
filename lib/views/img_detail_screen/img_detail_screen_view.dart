library img_detail_screen_view;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:xicom_sample/theme/palettes.dart';
import 'package:xicom_sample/widgets/custom_button.dart';
import 'package:xicom_sample/widgets/custom_text_field%20copy.dart';
import 'package:xicom_sample/widgets/custom_text_field.dart';
import 'img_detail_screen_view_model.dart';

part 'img_detail_screen_mobile.dart';
part 'img_detail_screen_tablet.dart';
part 'img_detail_screen_desktop.dart';

// ignore: must_be_immutable
class ImgDetailScreenView extends StatelessWidget {
  static const routeName = '/img_detail_screen';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ImgDetailScreenViewModel>.reactive(
        viewModelBuilder: () => ImgDetailScreenViewModel(),
        onViewModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout.builder(
            mobile: (_) => _ImgDetailScreenMobile(viewModel),
            desktop: (_) => _ImgDetailScreenMobile(viewModel),
            tablet: (_) => _ImgDetailScreenMobile(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _ImgDetailScreenDesktop(viewModel),
            //tablet: _ImgDetailScreenTablet(viewModel),
          );
        });
  }
}
