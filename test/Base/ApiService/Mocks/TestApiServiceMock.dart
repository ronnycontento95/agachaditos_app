import 'dart:convert';

CorrectPostBodyParame correctPostBodyParameFromJson(String str) => CorrectPostBodyParame.fromJson(json.decode(str));

String correctPostBodyParameToJson(CorrectPostBodyParame data) => json.encode(data.toJson());

class CorrectPostBodyParame {
    CorrectPostBodyParame({
        this.title,
        this.body,
        this.userId,
    });

    String? title;
    String? body;
    int? userId;

    factory CorrectPostBodyParame.fromJson(Map<String, dynamic> json) => CorrectPostBodyParame(
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
        "userId": userId,
    };
}


class CorrectPutBodyParame {
    CorrectPutBodyParame({
        this.id,
        this.title,
        this.body,
        this.userId,
    });

    int? id;
    String? title;
    String? body;
    int? userId;

    factory CorrectPutBodyParame.fromJson(Map<String, dynamic> json) => CorrectPutBodyParame(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
    };
}
