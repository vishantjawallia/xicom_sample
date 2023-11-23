import 'dart:developer';

import '../../../models/images_models.dart';
import 'package:stacked/stacked.dart';

import '../../config/config.dart';
import 'service/dashboard_service.dart';

class DashboardScreenViewModel extends BaseViewModel with DashboradService {
  List<Images>? imgListing;

  DashboardScreenViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    if (imgListing == null) {
      var response = await getData(108, "popular", 0);
      if (response != null) {
        imgListing = response.images!.toList();
      }
    }
    setBusy(false);
    notifyListeners();
  }
}
