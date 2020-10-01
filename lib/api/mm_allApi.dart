//import 'dart:convert';
import 'package:dio/dio.dart';
//import 'package:meta/meta.dart';
import 'package:myanmar_covid19_track_app/model/myanmar_model.dart';

const baseUrl = 'https://covid19.mathdro.id/api/countries/Burma/confirmed';

class MMApiClient {

  MMApiClient._internal();
static MMApiClient _instance = new MMApiClient._internal();
static MMApiClient get instance =>_instance;
final httpClient=new Dio();


// ignore: missing_return
 Future<List<MMModel>> getAll() async {
    final Response response = await this.httpClient.get(baseUrl);
    if(response.statusCode==200){
     print(response);
     return(response.data as List).map((e) => MMModel.fromJson(e)).toList();
    }
    
 
}

}