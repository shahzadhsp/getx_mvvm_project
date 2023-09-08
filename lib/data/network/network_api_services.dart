import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getx_mvvm_project/data/app_exceptions.dart';
import 'package:getx_mvvm_project/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
    } on SocketException {
      throw InternetExceptions('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {}
  }
}
