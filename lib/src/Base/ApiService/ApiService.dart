import 'dart:io';
import 'dart:convert';

import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:http/http.dart' as http;

abstract class _Exceptions {
  static String socketExceptionMessage = "No Internet Connection";
  static String httpException = "Couldn't find the path";
  static String formatException = "Bad response format";
}

abstract class ApiService {
  Future<Map<String, dynamic>> getDataPostRequest(
      {required Map<String, dynamic> bodyparameters,
      required String url,
      Map<String, String>? headers});

  Future<Map<String, dynamic>> getDataPutRequest(
      {required Map<String, dynamic> bodyparameters,
      required String url,
      Map<String, String>? headers});

  Future<Map<String, dynamic>> getDataFromGetRequest(
      {required String url, Map<String, String>? headers});
}

class DefaultApiService extends ApiService {
  @override
  Future<Map<String, dynamic>> getDataFromGetRequest(
      {required String url, Map<String, String>? headers}) async {
    final _url = Uri.parse(url);
    final response = await http.get(_url, headers: headers);

    try {
      if (response.statusCode.toString().contains('20')) {
        //Fue correcta la llamada
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        //Tubo un error
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      //No tinees coneccion a internet
      throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      //No econtro el http
      throw Failure.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      //Formato incorrecto
      throw Failure.fromMessage(message: _Exceptions.formatException);
    }
  }

  @override
  Future<Map<String, dynamic>> getDataPostRequest(
      {required Map<String, dynamic> bodyparameters,
      required String url,
      Map<String, String>? headers}) async {
    final _url = Uri.parse(url);
    final body = json.encode(bodyparameters);
    final response = await http.post(_url, headers: headers, body: body);
    try {
      //TODO: Revisar este if con el contians
      if (response.statusCode.toString().contains('20')) {
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: _Exceptions.formatException);
    }
  }

  @override
  Future<Map<String, dynamic>> getDataPutRequest(
      {required Map<String, dynamic> bodyparameters,
      required String url,
      Map<String, String>? headers}) async {
    final _url = Uri.parse(url);
    final body = json.encode(bodyparameters);
    final response = await http.put(_url, headers: headers, body: body);
    try {
      //TODO: Revisar este if con el contians
      if (response.statusCode.toString().contains('20')) {
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: _Exceptions.formatException);
    }
  }
}
