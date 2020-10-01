import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:http/http.dart' as http;
import 'package:myanmar_covid19_track_app/controller/home_controller.dart';

class HomeHepler extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id:'cases',
      init:HomeController(),
      builder: (data){
        if(data.loading){
          return Center(
            child:CircularProgressIndicator(
              backgroundColor: Colors.green,
            )
          );
        }
        else if(data.connection){
          return Center(
            child:Text("No Internet Connection")
          );
        }
        else{
          return ListView.builder(
          itemCount: data.cases.length,
            itemBuilder:(BuildContext context,int index){
              final cases=data.cases[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child:Image.asset('assets/flagmm.png')
                ),
                title: Text("${cases.state}"),
                trailing: Text("${cases.statecode}"),
                onTap: (){
                  data.getStateData(cases);
                },
                
              );
            }
          );
        }
          
                
    });
  }
}