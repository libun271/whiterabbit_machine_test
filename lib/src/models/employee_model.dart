
import 'dart:convert';
import 'package:hive_flutter/adapters.dart';
part 'employee_model.g.dart';

class EmployeeData {
  EmployeeData({
    this.data = const [],
  });

  final List<Employee> data;

  factory EmployeeData.fromJson(dynamic json) => EmployeeData(
    data: List<Employee>.from(
        json.map((x) => Employee.fromJson(x))),
  );

  dynamic toJson() => List<dynamic>.from(data.map((x) => x.toJson()));
}

List<Employee> employeeFromJson(String str) => List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
@HiveType(typeId: 0)
class Employee {
  Employee({
    this.id,
    this.name,
    this.username,
    this.email,
    this.profileImage,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? username;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? profileImage;
  @HiveField(5)
  Address? address;
  @HiveField(6)
  String? phone;
  @HiveField(7)
  String? website;
  @HiveField(8)
  Company? company;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    profileImage: json["profile_image"] == null ? null : json["profile_image"],
    address: Address.fromJson(json["address"]),
    phone: json["phone"] == null ? null : json["phone"],
    website: json["website"] == null ? null : json["website"],
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "profile_image": profileImage == null ? null : profileImage,
    "address": address!.toJson(),
    "phone": phone == null ? null : phone,
    "website": website == null ? null : website,
    "company": company == null ? null : company!.toJson(),
  };
}
@HiveType(typeId: 1)
class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  @HiveField(0)
  String? street;
  @HiveField(1)
  String? suite;
  @HiveField(2)
  String? city;
  @HiveField(3)
  String? zipcode;
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"],
    suite: json["suite"],
    city: json["city"],
    zipcode: json["zipcode"],
    geo: Geo.fromJson(json["geo"]),
  );

  Map<String, dynamic> toJson() => {
    "street": street,
    "suite": suite,
    "city": city,
    "zipcode": zipcode,
    "geo": geo!.toJson(),
  };
}

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  String? lat;
  String? lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}
@HiveType(typeId: 2)
class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  @HiveField(1)
  String? name;
  @HiveField(2)
  String? catchPhrase;
  @HiveField(3)
  String? bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"],
    catchPhrase: json["catchPhrase"],
    bs: json["bs"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
  };
}
