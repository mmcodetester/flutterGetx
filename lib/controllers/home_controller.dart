//import 'package:connectivity/connectivity.dart';
import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';
import 'package:myanmar_covid19_track_app/api/covid_api.dart';
import 'package:myanmar_covid19_track_app/model/case_model.dart';
import 'package:myanmar_covid19_track_app/ui/district_data.dart';
//import 'package:myanmar_covid19_track_app/ui/district_data.dart';

class HomeController extends GetxController {

List<CovidModel> _case=[];
List<CovidModel> get cases=>_case;
bool _loading= true;
bool _connection=true;
bool get connection=>_connection;
bool get loading=>_loading;

@override
  void onInit() {
    super.onInit();
    print('init');
    //this._loading=true; 
  }

  @override
  void onReady() {
    super.onReady();  
    this.getConnect(); 
    this._loading=true; 
    this.getcase();
    print('ready');  
  }


  Future<void> getcase() async{
    //this.getConnect();
    final data=await CovidApi.instance.getAll();
    print(data);
    this._case=data;
    this._loading=false;
    update(['cases']);
  }

  void getStateData(CovidModel cases){
    Get.to(DistrictPage(),
    arguments:cases
    );
   // print(cases.districtData);
  }



  void getConnect() async {
   var connectivityResult = await (Connectivity().checkConnectivity());
    
      if (connectivityResult == ConnectivityResult.none) {
      this._connection =true;
      print('no connect');
      update(['connection']);
    } else if (connectivityResult == ConnectivityResult.mobile) {
      this._connection =false; 
      print('connect');
      update(['connection']);
    } else if (connectivityResult == ConnectivityResult.wifi) {     
      this._connection =false; 
     update(['connection']);
      print('ok');
   
    }
    //var connectivityResult = await (Connectivity().checkConnectivity());
    
  }

 
}