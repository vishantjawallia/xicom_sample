import 'package:get/get.dart';

extension NumberParsing on num {
  double get h => this * Get.height / 100;
  double get w => this * Get.width / 100;
  double get sp => this * (Get.width / 3) / 100;
}

// extension DoubleParsing on double {
//   double get macOs => this * Get.height / 100;
//   double get android => this * Get.height / 100;
//   double get web => this * Get.height / 100;
//   double get linux => this * Get.height / 100;
//   double get windows => this * Get.height / 100;
// }
extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PhoneValidator on String {
  bool isValidPhone() {
    // if (this.length == 0) {
    //   return 'Please enter mobile number';
    // } else if (!regExp.hasMatch(value)) {
    //   return 'Please enter valid mobile number';
    // }
    return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(this);
  }
}
