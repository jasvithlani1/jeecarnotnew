import 'dart:convert';
import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:jeecarnot/models/menotdata.dart';
import 'package:jeecarnot/models/quoteoftheday.dart';
import 'package:jeecarnot/models/notificationmodel.dart';
import 'package:http/http.dart' as http;

class QuoteData {
  List<Quote> quote = [];
  Future<void> getQuote() async {
    String url = " http://89.107.63.135:3333/mentee/dashboard/quote";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['quotes'].forEach((element) {
        if (element['quote'] != null && element['by'] != null) {
          Quote quoteoftheday = Quote(
            quote: element['quote'],
            by: element['by'],
          );
          quote.add(quoteoftheday);
        }
      });
    }
  }
}

class Mentoretails {
  final String apiUrl =
      " http://89.107.63.135:3333/mentee/dashboard/my-mentor-details";
  List<MentorModel> mentor = [];
  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['results'];
  }

  String _name(dynamic user) {
    return user['name']['title'] +
        " " +
        user['name']['first'] +
        " " +
        user['name']['last'];
  }

  String _phoneNumber(dynamic user) {
    return user['phoneNumber']['number'];
  }

  String _email(dynamic user) {
    return user['email']['emailadress'];
  }

  String _mentorId(dynamic user) {
    return user['mentorId']['Id'];
  }

  String _mentorImage(dynamic user) {
    return user['mentorImage']['image'];
  }
}

class NotificationProvide {
  List<NotificationModel> notifylist = [];
  Future<void> getNotification() async {
    String url =
        ' http://89.107.63.135:3333/mentee/dashhboard/notifications/fetch-all';
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['notifications'].forEach((element) {
        if (element['title'] != null) {
          NotificationModel notificationModel = NotificationModel(
            notificationId: element['notificationId'],
            title: element['title'],
          );
          notifylist.add(notificationModel);
        }
      });
    }
  }
}
