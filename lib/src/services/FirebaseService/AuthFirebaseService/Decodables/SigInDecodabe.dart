import 'dart:convert';

class SingInDecodable {
    SingInDecodable({
        this.kind,
        this.localId,
        this.email,
        this.displayName,
        this.idToken,
        this.registered,
        this.refreshToken,
        this.expiresIn,
    });

    String? kind;
    String? localId;
    String? email;
    String? displayName;
    String? idToken;
    bool? registered;
    String? refreshToken;
    String? expiresIn;

    factory SingInDecodable.fromRawJson(String str) => SingInDecodable.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SingInDecodable.fromJson(Map<String, dynamic> json) => SingInDecodable(
        kind: json["kind"] == null ? null : json["kind"],
        localId: json["localId"] == null ? null : json["localId"],
        email: json["email"] == null ? null : json["email"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        idToken: json["idToken"] == null ? null : json["idToken"],
        registered: json["registered"] == null ? null : json["registered"],
        refreshToken: json["refreshToken"] == null ? null : json["refreshToken"],
        expiresIn: json["expiresIn"] == null ? null : json["expiresIn"],
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "localId": localId == null ? null : localId,
        "email": email == null ? null : email,
        "displayName": displayName == null ? null : displayName,
        "idToken": idToken == null ? null : idToken,
        "registered": registered == null ? null : registered,
        "refreshToken": refreshToken == null ? null : refreshToken,
        "expiresIn": expiresIn == null ? null : expiresIn,
    };
}
