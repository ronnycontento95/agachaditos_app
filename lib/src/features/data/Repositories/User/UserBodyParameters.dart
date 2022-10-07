import 'dart:convert';

class UserBodyParameters {
    UserBodyParameters({
        this.localId,
        this.role,
        this.username,
        this.email,
        this.phone,
        this.dateBith,
        this.starDate,
        this.photo,
        this.billingAddress,
        this.shippingAddress,
        this.idToken,
    });

    String? billingAddress;
    String? dateBith;
    String? email;
    String? idToken;
    String? localId;
    String? phone;
    String? photo;
    String? role;
    String? shippingAddress;
    String? starDate;
    String? username;

    factory UserBodyParameters.fromRawJson(String str) => UserBodyParameters.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserBodyParameters.fromJson(Map<String, dynamic> json) => UserBodyParameters(
        billingAddress: json["billingAddress"] == null ? null : json["billingAddress"],
        dateBith: json["dateBith"] == null ? null : json["dateBith"],
        email: json["email"] == null ? null : json["email"],
        idToken: json["idToken"] == null ? null : json["idToken"],
        localId: json["localId"] == null ? null : json["localId"],
        phone: json["phone"] == null ? null : json["phone"],
        photo: json["photo"] == null ? null : json["photo"],
        role: json["role"] == null ? null : json["role"],
        shippingAddress: json["shippingAddress"] == null ? null : json["shippingAddress"],
        starDate: json["starDate"] == null ? null : json["starDate"],
        username: json["username"] == null ? null : json["username"],
    );

    Map<String, dynamic> toJson() => {
        "billingAddress": billingAddress == null ? null : billingAddress,
        "dateBith": dateBith == null ? null : dateBith,
        "email": email == null ? null : email,
        "idToken": idToken == null ? null : idToken,
        "localId": localId == null ? null : localId,
        "phone": phone == null ? null : phone,
        "photo": photo == null ? null : photo,
        "role": role == null ? null : role,
        "shippingAddress": shippingAddress == null ? null : shippingAddress,
        "starDate": starDate == null ? null : starDate,
        "username": username == null ? null : username,
    };
}
