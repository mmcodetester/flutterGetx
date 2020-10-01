
import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';
import 'package:myanmar_covid19_track_app/api/mm_allApi.dart';
import 'package:myanmar_covid19_track_app/model/myanmar_model.dart';
//import 'package:meta/meta.dart';

class MMController extends GetxController {
List<MMModel> _mmmodels=[]; 
List<MMModel> get mmmodels=>_mmmodels;
Timer timer;
bool _connections=true;
bool _loading= true;
bool get loading=>_loading;
bool get connections=>_connections;
@override
  void onInit() {
    super.onInit();
    print('init');
    //update datata in every 15
    //const oneSecond = const Duration(seconds: 30);
    //new Timer.periodic(oneSecond, (timer)=>onReady());
  }

  @override
  void onReady() {
    super.onReady();
    this._loading=true;
    this.getConnection();
    this.getMMData();    
   
  }

  Future<void> getMMData() async{  
    final data=await MMApiClient.instance.getAll();
    this._mmmodels=data;
    this._loading=false;
    update(['mmmodels']);
    
  }
  void getConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    
      if (connectivityResult == ConnectivityResult.none) {
      this._connections =true;
      print('no connect');
      update(['connections']);
    } else if (connectivityResult == ConnectivityResult.mobile) {
      this._connections =false; 
      print('connect');
      update(['connections']);
    } else if (connectivityResult == ConnectivityResult.wifi) {     
      this._connections =false; 
     update(['connections']);
      print('ok');
   
    }
    //var connectivityResult = await (Connectivity().checkConnectivity());
    
  }

}