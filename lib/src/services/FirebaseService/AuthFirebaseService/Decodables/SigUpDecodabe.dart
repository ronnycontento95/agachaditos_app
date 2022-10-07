import 'dart:convert';

class SingUpDecodable {
    SingUpDecodable({
        this.kind,
        this.idToken,
        this.email,
        this.refreshToken,
        this.expiresIn,
        this.localId,
    });

    String? kind;
    String? idToken;
    String? email;
    String? refreshToken;
    String? expiresIn;
    String? localId;

    factory SingUpDecodable.fromRawJson(String str) => SingUpDecodable.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SingUpDecodable.fromJson(Map<String, dynamic> json) => SingUpDecodable(
        kind: json["kind"] == null ? null : json["kind"],
        idToken: json["idToken"] == null ? null : json["idToken"],
        email: json["email"] == null ? null : json["email"],
        refreshToken: json["refreshToken"] == null ? null : json["refreshToken"],
        expiresIn: json["expiresIn"] == null ? null : json["expiresIn"],
        localId: json["localId"] == null ? null : json["localId"],
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "idToken": idToken == null ? null : idToken,
        "email": email == null ? null : email,
        "refreshToken": refreshToken == null ? null : refreshToken,
        "expiresIn": expiresIn == null ? null : expiresIn,
        "localId": localId == null ? null : localId,
    };
}
