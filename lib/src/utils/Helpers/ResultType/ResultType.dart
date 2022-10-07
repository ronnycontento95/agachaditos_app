import 'package:agachaditos_app/src/Base/ApiService/AppError.dart';

enum ResultStatus { succes, error }

class Result<T, E> {
  final E? error;
  final T? value;
  final ResultStatus status;
  
  Result.success(this.value)
      : status = ResultStatus.succes,
        error = null;

  Result.failure(this.error,)
      : status = ResultStatus.error,
        value = null;

  Result(this.status, this.value, this.error);
}
