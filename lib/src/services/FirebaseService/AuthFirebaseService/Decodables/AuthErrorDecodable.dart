
import 'dart:convert';

class AuthErrorDecodable {
    AuthErrorDecodable({
        this.error,
    });

    AuthErrorDecodableError? error;

    factory AuthErrorDecodable.fromRawJson(String str) => AuthErrorDecodable.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AuthErrorDecodable.fromJson(Map<String, dynamic> json) => AuthErrorDecodable(
        error: json["error"] == null ? null : AuthErrorDecodableError.fromJson(json["error"]),
    );

    Map<String, dynamic> toJson() => {
        "error": error == null ? null : error?.toJson(),
    };
}

class AuthErrorDecodableError {
    AuthErrorDecodableError({
        this.code,
        this.message,
        this.errors,
    });

    int? code;
    String? message;
    List<ErrorElement>? errors;

    factory AuthErrorDecodableError.fromRawJson(String str) => AuthErrorDecodableError.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AuthErrorDecodableError.fromJson(Map<String, dynamic> json) => AuthErrorDecodableError(
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
        errors: json["errors"] == null ? null : List<ErrorElement>.from(json["errors"].map((x) => ErrorElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "message": message == null ? null : message,
        "errors": errors == null ? null : List<dynamic>.from(errors!.map((x) => x.toJson())),
    };
}

class ErrorElement {
    ErrorElement({
        this.message,
        this.domain,
        this.reason,
    });

    String? message;
    String? domain;
    String? reason;

    factory ErrorElement.fromRawJson(String str) => ErrorElement.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ErrorElement.fromJson(Map<String, dynamic> json) => ErrorElement(
        message: json["message"] == null ? null : json["message"],
        domain: json["domain"] == null ? null : json["domain"],
        reason: json["reason"] == null ? null : json["reason"],
    );

    Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
        "domain": domain == null ? null : domain,
        "reason": reason == null ? null : reason,
    };
}
