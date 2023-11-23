import 'package:stacked/stacked.dart';
import 'package:xicom_sample/views/img_detail_screen/service/img_detail_service.dart';

class ImgDetailScreenViewModel extends BaseViewModel with ImgDetailService {
  ImgDetailScreenViewModel(){
    loadItems();
  }
  
  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

}