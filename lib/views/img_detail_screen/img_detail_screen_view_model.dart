import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:xicom_sample/views/img_detail_screen/service/img_detail_service.dart';

class ImgDetailScreenViewModel extends BaseViewModel with ImgDetailService {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  File? file;
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  FocusScopeNode fnameFocusedNode = FocusScopeNode();
  FocusScopeNode lnameFocusedNode = FocusScopeNode();
  FocusScopeNode emailFocusedNode = FocusScopeNode();
  FocusScopeNode phoneFocusedNode = FocusScopeNode();
  ImgDetailScreenViewModel() {
    fnameController.addListener(() => notifyListeners());
    lnameController.addListener(() => notifyListeners());
    emailController.addListener(() => notifyListeners());
    phoneController.addListener(() => notifyListeners());
    fnameFocusedNode.addListener(() => notifyListeners());
    lnameFocusedNode.addListener(() => notifyListeners());
    emailFocusedNode.addListener(() => notifyListeners());
    phoneFocusedNode.addListener(() => notifyListeners());
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void loadMoreHandler() {}

  addData() {}

  void onImageChange() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      file = File(pickedFile.path);
      notifyListeners();
    }
  }
}
