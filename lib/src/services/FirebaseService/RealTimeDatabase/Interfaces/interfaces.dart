import 'dart:async';

abstract class BaseREalTimeDatabaseService {
  String baseUrl =
      "https://delivery-app-flutter-56bed-default-rtdb.europe-west1.firebasedatabase.app/";
  String endUrl = ".json";
}

abstract class REalTimeDatabaseService extends BaseREalTimeDatabaseService {
  // 3 metosdos put get post
  Future<Map<String, dynamic>> postData(
      {required Map<String, dynamic> bodyParameters, required String path});

  Future<Map<String, dynamic>> getData(
      {required String path});

  Future<Map<String, dynamic>> putData(
      {required Map<String, dynamic> bodyParameters, required String path});



}
