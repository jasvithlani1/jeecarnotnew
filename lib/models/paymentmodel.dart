import 'package:flutter/material.dart';

class paymentdetailsmodel {
  List<Payments> payments;

  paymentdetailsmodel({this.payments});

  paymentdetailsmodel.fromJson(Map<String, dynamic> json) {
    if (json['payments'] != null) {
      payments = new List<Payments>();
      json['payments'].forEach((v) {
        payments.add(new Payments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.payments != null) {
      data['payments'] = this.payments.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Payments {
  String invoiceid;
  String paymentdate;
  String status;
  String id;
  String plan;
  int amount;

  Payments(
      {this.invoiceid,
      this.paymentdate,
      this.status,
      this.id,
      this.plan,
      this.amount});

  Payments.fromJson(Map<String, dynamic> json) {
    invoiceid = json['invoiceid'];
    paymentdate = json['paymentdate'];
    status = json['status'];
    id = json['id'];
    plan = json['plan'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['invoiceid'] = this.invoiceid;
    data['paymentdate'] = this.paymentdate;
    data['status'] = this.status;
    data['id'] = this.id;
    data['plan'] = this.plan;
    data['amount'] = this.amount;
    return data;
  }
}
