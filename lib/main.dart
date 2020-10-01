import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myanmar_covid19_track_app/provider/network_provider.dart';
import 'package:myanmar_covid19_track_app/routes/router.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
     GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        defaultTransition: Transition.fade,
        getPages: Router.route,
    ),    
  );
}