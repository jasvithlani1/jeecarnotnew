import 'dart:convert';
AboutModel aboutModelFromJson(String str) => AboutModel.fromJson(json.decode(str);
String aboutModelToJson(AboutModel data) => json.encode(data.toJson());
class AboutModel {
  String jeecarnot;
  String mentorship;
  String expectations;
  AboutModel({
    this.jeecarnot,
    this.mentorship,
    this.expectations,
  });
  factory AboutModel.fromJson(Map<String, dynamic> json) => AboutModel(
        jeecarnot: json["jeecarnot"],
        mentorship: json["mentorship"],
        expectations: json["expectations"],
      );
  Map<String, dynamic> toJson() => {
        "jeecarnot": jeecarnot,
        "mentorship": mentorship,
        "expectations": expectations,
      };
}

class SecurityModel{
  String oldpassword;
  String newpassword;

  SecurityModel({
    this.oldpassword,
    this.newpassword,
  });
  factory SecurityModel.fromJson(Map<String, dynamic> json) => SecurityModel(  
    oldpassword: json["oldpassword"],
    newpassword: json["newpassword"],
  );
  Map<String, dynamic> toJson() => {
    "olspassword" : oldpassword,
    "newpassword" : newpassword,
  };
}