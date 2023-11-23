// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

mixin ImgDetailService {
  /* -------------------------------- @apiFileUpload  ------------------------------- */
  Future<bool> apiUploadFile(
    String? url,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    File? file,
  ) async {
    bool result = false;
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
      if (response.statusCode == 200) {
        // setBusy(false);
        // loadItems(reload: true);
        // log(response.stream.first.toString());
        result = true;
      }
      return result;
    } catch (e) {
      // log('$e');
      return result;
    }
  }

  Future<File?> saveImage(String url) async {
    String? message;
    // final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      // Download image
      final http.Response response = await http.get(Uri.parse(url));

      // Get temporary directory
      final dir = await getTemporaryDirectory();

      // Create an image name
      var filename = '${dir.path}/${DateTime.now().millisecond}.png';

      // Save to filesystem
      final file = File(filename);
      await file.writeAsBytes(response.bodyBytes);

      return file;
    } catch (e) {
      return null;
    }
    //   await file.writeAsBytes(response.bodyBytes);

    //   // Ask the user to save it
    //   final params = SaveFileDialogParams(sourceFilePath: file.path);
    //   final finalPath = await FlutterFileDialog.saveFile(params: params);

    //   if (finalPath != null) {
    //     message = 'Image saved to disk';
    //   }
    // } catch (e) {
    //   message = 'An error occurred while saving the image';
    // }

    // if (message != null) {
    //   scaffoldMessenger.showSnackBar(SnackBar(content: Text(message)));
    // }
  }
}
