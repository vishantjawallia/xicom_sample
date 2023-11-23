// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

mixin ImgDetailService {
  /* -------------------------------- @apiFileUpload  ------------------------------- */
  void apiUploadFile(
    String? url,
    int? firstName,
    int? lastName,
    int? email,
    int? phone,
    File? file,
  ) async {
    try {
      var stream = http.ByteStream(file!.openRead());
      Map<String, String> headers = {
        'Content-Type': "application/json",
      };
      var uri = Uri.parse(url!);
      var request = http.MultipartRequest("POST", uri);
      String name = file.path.split('/').last;
      var multipartFileSign = http.MultipartFile.fromBytes(
        'user_image',
        File(file.path).readAsBytesSync(),
        filename: name,
      );
      request.files.add(multipartFileSign);
      request.headers.addAll(headers);
      request.fields['first_name'] = jsonEncode(firstName);
      request.fields['last_name'] = jsonEncode(lastName);
      request.fields['email'] = jsonEncode(email);
      request.fields['phone'] = jsonEncode(phone);
      log(jsonEncode(request.fields));
      var response = await request.send();
      log(response.statusCode.toString());
      log(response.statusCode.toString());
      log(response.contentLength.toString());
      log(response.headers.toString());
      log(response.persistentConnection.toString());
      log(response.isRedirect.toString());
      log(response.stream.toString());
      //
      response.stream.transform(utf8.decoder).listen((value) {
        log("====>${jsonEncode(value)}");
        log(response.statusCode.toString());
        log(value);
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        // setBusy(false);
        // loadItems(reload: true);
        log(response.stream.first.toString());
      }
    } on SocketException {
      // log('$e');
      throw "no-internet";
    }
  }
}
