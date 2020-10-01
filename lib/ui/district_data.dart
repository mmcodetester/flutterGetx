import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:http/http.dart' as http;
import 'package:myanmar_covid19_track_app/controller/district_controller.dart';

class DistrictPage extends GetView<DistrictController> {
   final int total=0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init:DistrictController(),
      builder: (_){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title:Text("${_.cases.state}")
          ),
          body:Container(
            child: Column(
              children:<Widget> [
                 Expanded(
                   flex: 4,
                   child: ListView.builder(
                    itemCount: _.cases.districtData.length,
                    itemBuilder: (BuildContext context,int index){
                      final districtData=_.cases.districtData[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amberAccent,
                        child:Text(
                          "${districtData.district[0]}",
                          style:TextStyle(color:Colors.redAccent)
                        ),
                        //backgroundColor:Colors.blue
                      ),
                      title:Text("${districtData.district}",
                        style:TextStyle(fontWeight: FontWeight.bold)
                      ),
                      subtitle: Text("Recovered : "+"${districtData.recovered}",
                        style:TextStyle(color:Colors.green)
                      ),
                      trailing: Text("Confirmed \n "+"   " +"${districtData.confirmed}",
                        style:TextStyle(color:Colors.red,fontSize:14)
                      ),
                      
                    );
                }),
                 ),
                 Expanded(
                   flex:1,
                  child:Container(
                    padding: EdgeInsets.only(left:50,right:50,top:20,bottom:20),
                    child:Image.asset('assets/flagmm.png'),
                  ),
                )
              ],
            ),
          )
        );
    });
  }
}