// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable
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
    var uri = Uri.parse(Url.getData);

    var request = http.MultipartRequest('POST', uri)
      ..fields['user_id'] = "$userId"
      ..fields['type'] = "$type"
      ..fields['offset'] = "$page";

    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
    });

    var response = await request.send();

    if (response.statusCode == 200) {
      response.stream.transform(utf8.decoder).listen((value) {
        log("====>${jsonEncode(value)}");
        Map<String, dynamic> body = jsonDecode(value.toString());
        ImagesModel img = ImagesModel.fromJson(body);
        log(img.toString());
      });
    }
  }
}
