import 'package:get/get.dart';
import 'package:myanmar_covid19_track_app/model/case_model.dart';
//import 'package:meta/meta.dart';

class DistrictController extends GetxController {

CovidModel _cases;
CovidModel get cases =>_cases;
  @override
  void onInit() {
    super.onInit();
    this._cases =Get.arguments as CovidModel;
  }

  @override
  void onReady() {
    super.onReady();
  }

  

}