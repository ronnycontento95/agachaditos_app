import 'dart:convert';

import 'package:agachaditos_app/src/Base/ApiService/ApiService.dart';
import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/services/FirebaseService/RealTimeDatabase/Interfaces/interfaces.dart';

class DefaulREalTimeDatabaseService extends REalTimeDatabaseService {
  final ApiService _apiService;

  DefaulREalTimeDatabaseService({ApiService? apiService})
      : _apiService = apiService ?? DefaultApiService();

  @override
  Future<Map<String, dynamic>> getData({required String path}) async {
    var endpoint = baseUrl + path + endUrl;
    try {
      final result = await _apiService.getDataFromGetRequest(url: endpoint);
      return result;
    } on Failure catch (f) {
      return f.error;
    }
  }

  @override
  Future<Map<String, dynamic>> postData(
      {required Map<String, dynamic> bodyParameters,
      required String path}) async {
    var endpoint = baseUrl + path + endUrl;
    try {
      final result = await _apiService.getDataPostRequest(
          bodyparameters: bodyParameters, url: endpoint);
      return result;
    } on Failure catch (f) {
      return f.error;
    }
  }

  @override
  Future<Map<String, dynamic>> putData(
      {required Map<String, dynamic> bodyParameters,
      required String path}) async {
    var endpoint = baseUrl + path + endUrl;
    try {
      final result = await _apiService.getDataPutRequest(
          bodyparameters: bodyParameters, url: endpoint);
      return result;
    } on Failure catch (f) {
      return f.error;
    }
  }
}
