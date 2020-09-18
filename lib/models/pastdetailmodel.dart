class Pastdetailmodel {
  List<Pasttickets> pasttickets;

  Pastdetailmodel({this.pasttickets});

  Pastdetailmodel.fromJson(Map<String, dynamic> json) {
    if (json['pasttickets'] != null) {
      pasttickets = new List<Pasttickets>();
      json['pasttickets'].forEach((v) {
        pasttickets.add(new Pasttickets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pasttickets != null) {
      data['pasttickets'] = this.pasttickets.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pasttickets {
  String tickettime;
  String ticketid;
  String subject;
  String description;
  String status;

  Pasttickets(
      {this.tickettime,
      this.ticketid,
      this.subject,
      this.description,
      this.status});

  Pasttickets.fromJson(Map<String, dynamic> json) {
    tickettime = json['tickettime'];
    ticketid = json['ticketid'];
    subject = json['subject'];
    description = json['description'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tickettime'] = this.tickettime;
    data['ticketid'] = this.ticketid;
    data['subject'] = this.subject;
    data['description'] = this.description;
    data['status'] = this.status;
    return data;
  }
}
