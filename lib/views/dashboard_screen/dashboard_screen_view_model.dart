import 'dart:developer';

import 'package:get/get.dart';
import 'package:xicom_sample/views/img_detail_screen/img_detail_screen_view.dart';

import '../../../models/images_models.dart';
import 'package:stacked/stacked.dart';

import '../../config/config.dart';
import 'service/dashboard_service.dart';

class DashboardScreenViewModel extends BaseViewModel with DashboradService {
  int page = 0;
  List<Images>? imgListing;

  DashboardScreenViewModel() {
    page = 0;
    notifyListeners();
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    imgListing ??= await getData("108", "popular", "$page");
    log((imgListing ?? []).length.toString());
    setBusy(false);
    notifyListeners();
  }

  void singleImageTap(Images? objects) {
    Get.to(() => ImgDetailScreenView(imageObj: objects));
  }

  void loadMoreImage() async {
    setBusy(true);
    page = page + 1;
    log(page.toString());
    notifyListeners();
    final images = await getData("108", "popular", "$page") ?? [];
    List<Images> jj = [...?imgListing, ...images];
    log(jj.length.toString());
    imgListing?.clear();
    notifyListeners();
    imgListing!.addAll(jj);
    setBusy(false);
    notifyListeners();
  }
}
