// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard_screen_view_model.dart';

appBar(BuildContext context, DashboardScreenViewModel viewModel) {
  return AppBar(
    centerTitle: true,
    title: Text(
      'Xicom',
      style: Get.textTheme.displayLarge!
          .copyWith(fontSize: 28, fontWeight: FontWeight.w600),
    ),
  );
}
