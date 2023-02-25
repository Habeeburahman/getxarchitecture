class SampleModel {
  String? firstName;
  String? lastName;
  String? gender;
  int? age;
  Address? address;
  List<PhoneNumbers>? phoneNumbers;

  SampleModel(
      {this.firstName,
      this.lastName,
      this.gender,
      this.age,
      this.address,
      this.phoneNumbers});

  SampleModel.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    age = json['age'];
    address =
        json['address'] != null ? Address?.fromJson(json['address']) : null;
    if (json['phoneNumbers'] != null) {
      phoneNumbers = <PhoneNumbers>[];
      json['phoneNumbers'].forEach((v) {
        phoneNumbers?.add(PhoneNumbers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['gender'] = gender;
    data['age'] = age;
    if (address != null) {
      data['address'] = address?.toJson();
    }
    if (phoneNumbers != null) {
      data['phoneNumbers'] = phoneNumbers?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  String? streetAddress;
  String? city;
  String? state;
  String? postalCode;

  Address({this.streetAddress, this.city, this.state, this.postalCode});

  Address.fromJson(Map<String, dynamic> json) {
    streetAddress = json['streetAddress'];
    city = json['city'];
    state = json['state'];
    postalCode = json['postalCode'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['streetAddress'] = streetAddress;
    data['city'] = city;
    data['state'] = state;
    data['postalCode'] = postalCode;
    return data;
  }
}

class PhoneNumbers {
  String? type;
  String? number;

  PhoneNumbers({this.type, this.number});

  PhoneNumbers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['number'] = number;
    return data;
  }
}
