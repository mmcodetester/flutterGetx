
import 'package:get/route_manager.dart';
import 'package:myanmar_covid19_track_app/ui/home_page.dart';
import 'package:myanmar_covid19_track_app/ui/mm_dashbord.dart';

class Router{
  static final route=[
    GetPage(name:'/state', page:()=> HomePage()),
    GetPage(name: '/', page: ()=>MMPage()),
  ];
}
