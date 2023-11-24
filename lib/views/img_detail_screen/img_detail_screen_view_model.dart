// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:xicom_sample/api/url.dart';
import 'package:xicom_sample/views/dashboard_screen/dashboard_screen_view.dart';
import '../../../models/images_models.dart';
import 'package:xicom_sample/views/img_detail_screen/service/img_detail_service.dart';

class ImgDetailScreenViewModel extends BaseViewModel with ImgDetailService {
  // String? firstName;
  // String? lastName;
  // String? email;
  final Images? imageObj;
  // String? phone;
  Uint8List? file;
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  FocusScopeNode fnameFocusedNode = FocusScopeNode();
  FocusScopeNode lnameFocusedNode = FocusScopeNode();
  FocusScopeNode emailFocusedNode = FocusScopeNode();
  FocusScopeNode phoneFocusedNode = FocusScopeNode();
  ImgDetailScreenViewModel(this.imageObj) {
    fnameController.addListener(() => notifyListeners());
    lnameController.addListener(() => notifyListeners());
    emailController.addListener(() => notifyListeners());
    phoneController.addListener(() => notifyListeners());
    fnameFocusedNode.addListener(() => notifyListeners());
    lnameFocusedNode.addListener(() => notifyListeners());
    emailFocusedNode.addListener(() => notifyListeners());
    phoneFocusedNode.addListener(() => notifyListeners());
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here
    log(imageObj!.xtImage!.toString());
    file = await saveImage(imageObj!.xtImage!);
    // log(file!);
    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void loadMoreHandler() {}

  addData(
    BuildContext context,
    File? file,
  ) async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text('Processing Data'),
          duration: Duration(milliseconds: 200)),
    );
    bool res = await apiUploadFile(Url.saveData, fnameController.text,
        lnameController.text, emailController.text, phoneController.text, file);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text('User has been saved successfully'),
          duration: Duration(milliseconds: 400)),
    );
    if (res) {
      Get.offAll(() => DashboardScreenView());
    }
  }

  void onImageChange() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // file = File(pickedFile.path);
      notifyListeners();
    }
  }
}
