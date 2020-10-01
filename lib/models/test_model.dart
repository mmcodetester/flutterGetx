class TestModel {

  String state;
  String statecode;

  TestModel({this.state,this.statecode });

  factory TestModel.fromJson(Map<String, dynamic> json){
      return TestModel(
         state : json['state'],
      statecode : json['statecode'],
      );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.statecode;
    data['statecode'] = this.statecode;
    return data;
  }
}