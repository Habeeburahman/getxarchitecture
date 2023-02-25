class PrayerTimeModel {
  int? code;
  String? status;
  String? data;

  PrayerTimeModel({this.code, this.status, this.data});

  PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    data['status'] = status;
    data['data'] = data;
    return data;
  }
}
