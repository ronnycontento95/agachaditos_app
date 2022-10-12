import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';
import 'package:agachaditos_app/src/features/domain/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:agachaditos_app/src/features/domain/UseCases/Auth/SignUpUseCase/SignUpUseCase.dart';
import 'package:agachaditos_app/src/features/domain/UseCases/Auth/SignUpUseCase/SignUpUseCaseParameters.dart';
import 'package:agachaditos_app/src/utils/Helpers/ResultType/ResultType.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class _Constants {
  static String correctEmail = 'cane7@gmail.com';
  static String correctPass = '123456';
  static String wrongEmail = 'cane8@gmail.com';
  static String wrongPass = '123467';
}

void main() {
  //GIVEN
  SignUpUseCase sut = DefaulSignUpUseCase();
  group('Test succes SignUP user in Firebe', () {
    test('Test Success signup user in firebase', () async {
      final SignUpUseCaseParameters params = SignUpUseCaseParameters(
          email: _Constants.correctEmail,
          password: _Constants.correctPass,
          username: 'Cane 3',
          date: '22/10/1989',
          phone: '1234567890');
          
      //When
      final result = await sut.execute(params: params);
      switch (result.status) {
        case ResultStatus.succes:
          //Then
          // TODO: Handle this case.
          expect(result.value, isA<SingUpEntity>());
          break;
        case ResultStatus.error:
          //Then
          // TODO: Handle this case.
          expect(result.error, Failure);
          break;
      }
    });
  });
  //When

  //THEN
}
