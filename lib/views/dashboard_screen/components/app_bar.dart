// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/palettes.dart';
import '../dashboard_screen_view_model.dart';

appBar(BuildContext context, DashboardScreenViewModel viewModel) {
  return AppBar(
    toolbarHeight: 90,
    elevation: 0,
    backgroundColor: Get.theme.appBarTheme.backgroundColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '"Quote',
          style: Get.textTheme.displayLarge!.copyWith(fontSize: 60, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: viewModel.layoutChangeHandler,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: viewModel.isGrid ? Palettes.primary.withOpacity(0.25) : Colors.transparent,
                ),
                child: Icon(
                  color: Get.theme.iconTheme.color,
                  Icons.format_list_bulleted_outlined,
                  size: 26,
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: viewModel.layoutChangeHandler,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: !viewModel.isGrid ? Palettes.primary.withOpacity(0.25) : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(
                  color: Get.theme.iconTheme.color,
                  size: 26,
                  Icons.photo_size_select_actual_rounded,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
