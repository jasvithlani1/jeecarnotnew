class Pastrequest {
  List<Pastrequests> pastrequests;

  Pastrequest({this.pastrequests});

  Pastrequest.fromJson(Map<String, dynamic> json) {
    if (json['pastrequests'] != null) {
      pastrequests = new List<Pastrequests>();
      json['pastrequests'].forEach((v) {
        pastrequests.add(new Pastrequests.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pastrequests != null) {
      data['pastrequests'] = this.pastrequests.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pastrequests {
  String requestid;
  List<String> material;
  String status;

  Pastrequests({this.requestid, this.material, this.status});

  Pastrequests.fromJson(Map<String, dynamic> json) {
    requestid = json['requestid'];
    material = json['material'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requestid'] = this.requestid;
    data['material'] = this.material;
    data['status'] = this.status;
    return data;
  }
}
