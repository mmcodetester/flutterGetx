import 'dart:convert';
import 'package:dio/dio.dart';
//import 'package:http/http.dart' as http;
//import 'package:meta/meta.dart';
import 'package:myanmar_covid19_track_app/model/myanmar_model.dart';

const baseUrl = 'https://covid19.mathdro.id/api/countries/Burma';

class MyApiClient {
MyApiClient._internal();
static MyApiClient _instance=new MyApiClient._internal();
static MyApiClient get instance=>_instance;
Dio httpClient=new Dio();


getAll() async {
  try {
    var response = await httpClient.get(baseUrl);
    if(response.statusCode == 200){
      Map<String, dynamic> jsonResponse = json.decode(response.data);
      print(jsonResponse);
        List<MMModel> listMyModel = jsonResponse['data'].map<MMModel>((map) { 
          return MMModel.fromJson(map);
        }).toList();
      return listMyModel;
    }else print ('erro -get');
  } catch(_){ }
}

}