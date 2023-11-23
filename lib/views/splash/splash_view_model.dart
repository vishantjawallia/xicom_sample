import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:xicom_sample/views/img_detail_screen/img_detail_screen_view.dart';

import '../dashboard_screen/dashboard_screen_view.dart';

class SplashViewModel extends BaseViewModel {
  SplashViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => DashboardScreenView ());
  }
}
