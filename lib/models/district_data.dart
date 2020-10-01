import 'package:get/state_manager.dart';

class DistrictDataModel extends GetxController {

  String district;
  int confirmed;
  int recovered;
  int active;
  int deceased;

  DistrictDataModel({this.district, this.confirmed, this.recovered,this.active, this.deceased});

 factory DistrictDataModel.fromJson(Map<String, dynamic> json){
   return DistrictDataModel(
      district : json['district'],
      confirmed : json['confirmed'],
      recovered : json['recovered'],
      active : json['active'],
      deceased : json['deceased']
   );
    
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['district']=this.district;
    data['confirmed']=this.confirmed;
    data['recovered']=this.recovered;
    data['active']=this.active;
    data['deceased']=this.deceased;
    return data;
  }
}