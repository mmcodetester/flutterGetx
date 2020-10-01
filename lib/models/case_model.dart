import 'package:get/state_manager.dart';

class CovidModel extends GetxController {
  String state;
  String statecode;
  List<DistrictData> districtData;

  CovidModel({this.state, this.statecode, this.districtData});

  CovidModel.fromJson(Map<String, dynamic> json) {
    this.state = json['state'];
    this.statecode = json['statecode'];
    if (json['districtData'] != null) {
      districtData = new List<DistrictData>();
      json['districtData'].forEach((v) {
        districtData.add(new DistrictData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['statecode'] = this.statecode;
    if (this.districtData != null) {
      data['districtData'] = this.districtData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DistrictData {
  String district;
  int active;
  int confirmed;
  int deceased;
  int recovered;
  Delta delta;

  DistrictData(
      {this.district,
      this.active,
      this.confirmed,
      this.deceased,
      this.recovered,
      this.delta});

  DistrictData.fromJson(Map<String, dynamic> json) {
    this.district = json['district'];
    this.active = json['active'];
    this.confirmed = json['confirmed'];
    this.deceased = json['deceased'];
    this.recovered = json['recovered'];
    this.delta = json['delta'] != null ? new Delta.fromJson(json['delta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['district'] = this.district;
    data['active'] = this.active;
    data['confirmed'] = this.confirmed;
    data['deceased'] = this.deceased;
    data['recovered'] = this.recovered;
    if (this.delta != null) {
      data['delta'] = this.delta.toJson();
    }
    return data;
  }
}

class Delta {
  int confirmed;
  int deceased;
  int recovered;

  Delta({this.confirmed, this.deceased, this.recovered});

  Delta.fromJson(Map<String, dynamic> json) {
    confirmed = json['confirmed'];
    deceased = json['deceased'];
    recovered = json['recovered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['confirmed'] = this.confirmed;
    data['deceased'] = this.deceased;
    data['recovered'] = this.recovered;
    return data;
  }
}