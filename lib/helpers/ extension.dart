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
