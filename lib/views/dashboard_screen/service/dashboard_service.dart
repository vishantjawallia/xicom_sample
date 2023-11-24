// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable, avoid_function_literals_in_foreach_calls, unused_import
import 'dart:convert';
import 'dart:io';
// import 'dart:math';

import '../../../models/images_models.dart';
import '../../../api/api_reference.dart';
import '../../../api/url.dart';

import 'dart:developer';
import 'package:http/http.dart' as http;

mixin DashboradService {
  /* -------------------------------- @getData------------------------------- */
  Future<List<Images>?> getData(
    String? userId,
    String? type,
    String? page,
  ) async {
    List<Images>? img = [];
    var uri = Uri.parse(Url.getData);

    var request = http.MultipartRequest('POST', uri)
      ..fields['user_id'] = "$userId"
      ..fields['type'] = "$type"
      ..fields['offset'] = "$page";

    request.headers.addAll({'Content-Type': 'multipart/form-data'});
    var response = await request.send();

    if (response.statusCode == 200) {
      log(request.fields.toString());
      final data = await response.stream.bytesToString();
      ImagesModel img2 = ImagesModel.fromJson(jsonDecode(data));
      img.addAll(img2.images!.toList());
      log((img).length.toString());
      return img;
    }
    log((img).length.toString());
    return img;
  }
}
