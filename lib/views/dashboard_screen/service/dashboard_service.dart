// ignore_for_file: unused_local_variable
import 'dart:convert';
import 'dart:io';

import '../../../models/images_models.dart';
import '../../../api/api_reference.dart';
import '../../../api/url.dart';

import 'dart:developer';
import 'package:http/http.dart' as http;

mixin DashboradService {
  
  /* -------------------------------- @getData------------------------------- */
  Future<ImagesModel?> getData(
    int? urserId,
    String? type,
    int? page,
  ) async {
    final res = await ApiReference.apiPost(Url.getData, {
      "user_id": urserId,
      "type": type,
      "offset": page,
    });
    try {
      if (res != null) {
        return ImagesModel.fromJson(res);
      }
    } catch (e) {
      log("getFlagDetail========>$e");
    }
    return null;
  }

  
}
