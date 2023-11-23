// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiReference {
  ApiReference._();

  /* -------------------------------- Api Post ------------------------------- */
  static Future<dynamic> apiPost(
    String? url,
    Map<String, dynamic>? body,
  ) async {
    log(url.toString());
    try {
      final response = await http.post(
        Uri.parse(url!),
        headers: {
          'Content-Type': "application/json",
        },
        body: jsonEncode(body!),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw "Exception-Occurred";
      }
    } on SocketException {
      throw "no-internet";
    }
  }

  /* -------------------------------- Api Get ------------------------------- */
  static Future<dynamic> apiGet(String? url) async {
    log(url.toString());
    try {
      final response = await http.get(
        Uri.parse(url!),
        headers: {'Content-Type': "application/json"},
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body.toString());
      } else {
        throw "Exception-Occurred";
      }
    } on SocketException {
      throw "no-internet";
    }
  }
}
