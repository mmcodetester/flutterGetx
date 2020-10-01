//import 'dart:convert';
import 'package:dio/dio.dart';
//import 'package:meta/meta.dart';
import 'package:myanmar_covid19_track_app/model/case_model.dart';
//import 'package:http/http.dart' as http;

const baseUrl = 'https://thantthet.github.io/covid19-api/v2/state_district_wise.json';

class CovidApi {
  CovidApi._internal();
static CovidApi _instance = new CovidApi._internal();
static CovidApi get instance =>_instance;
final httpClient=new Dio();


// ignore: missing_return
 Future<List<CovidModel>> getAll() async {
  try {
    final Response response = await this.httpClient.get(baseUrl);
    if(response.statusCode==200){
     //print(response);
     return(response.data as List).map((e) => CovidModel.fromJson(e)).toList();
    }
    
  } catch(e){ 
    print(e.message);
  }
}

}