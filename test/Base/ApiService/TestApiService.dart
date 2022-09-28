import 'package:agachaditos_app/src/Base/ApiService/ApiService.dart';
import 'package:flutter_test/flutter_test.dart';

import 'Mocks/TestApiServiceMock.dart';

abstract class _Constants {
  static Map<String, String> defaulHeaders = {
    'Content-type': 'application/json; charset=UTF-8'
  };
  static String postEndpoint = "https://jsonplaceholder.typicode.com/posts";
  static String getEndpoint = "https://jsonplaceholder.typicode.com/posts/1";
  static String putEndpoint = "https://jsonplaceholder.typicode.com/posts/1";
}

void main() {
  //Esta es la que vamos a testiar
  final ApiService _testApiService = DefaultApiService();

  //Test correct Connection of Api Service
  group("Test correct Connection of Api Service", () {
    // test corret post connections to jsonPlaceholder
    test('test corret post connections to jsonPlaceholder', () async {
      final bodyParams =
          CorrectPostBodyParame(title: 'foo', body: 'bar', userId: 1);
      final result = await _testApiService.getDataPostRequest(
          bodyparameters: bodyParams.toJson(),
          url: _Constants.postEndpoint,
          headers: _Constants.defaulHeaders);
      expect(result, Map.from(result));
    });

    test('Test corret get connections to jsonPlaceholder', () async {
      final result = await _testApiService.getDataFromGetRequest(
          url: _Constants.getEndpoint);
      expect(result, Map.from(result));
    });

    test('Test corret put connections to jsonPlaceholder', () async {
      final bodyParams =
          CorrectPutBodyParame(id: 1, title: 'foo', body: 'bar', userId: 1);
      final result = await _testApiService.getDataPutRequest(
          bodyparameters: bodyParams.toJson(),
          url: _Constants.putEndpoint,
          headers: _Constants.defaulHeaders);

      expect(result, Map.from(result));
    });
  });
}
