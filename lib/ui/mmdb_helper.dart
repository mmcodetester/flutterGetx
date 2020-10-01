
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myanmar_covid19_track_app/controller/mm_controller.dart';

class MyHelper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MMController>(
        id: 'mmmodels',
        init: MMController(),
        builder: (_) {
          if(_.loading){
            return Center(
              child:CircularProgressIndicator(
                backgroundColor:Colors.green
              )
            );
          }
          else if(_.connections){
            return Center(
              child:Text("No Internet Connection")
            );
          }
          else{
               return SafeArea(
                 
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                          "Coronavirus Disease 2019 (COVID-19) Surveillance Dashboard (Myanmar)",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey))),
                 // SizedBox(height:10),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:4.0),
                      child: Container(
                          padding: EdgeInsets.only(left:15,right:15,top:20),
                            height: 100,
                            child: ListView.builder(
                            itemCount: _.mmmodels.length,
                            itemBuilder: (context, index) {
                              return Row(    
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                              children: <Widget>[
                                 Expanded(
                                   child: Card(
                                   color:Colors.orange,
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         margin:EdgeInsets.only(top:10, bottom:10),
                                         child:Text(
                                           "CONFIRMED",
                                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                         )
                                       ),
                                       Container(
                                        margin:EdgeInsets.only(top:10, bottom:10),
                                        child: Text(
                                          "${_.mmmodels[index].confirmed}",
                                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                        ))
                                     ]
                                   )
                                  ),
                                 ),
                              Expanded(
                                   child: Card(
                                   color:Colors.red,
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         margin:EdgeInsets.only(top:10, bottom:10),
                                         child:Text(
                                           "DEATHS",
                                            style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                         )
                                       ),
                                       Container(
                                        margin:EdgeInsets.only(top:10, bottom:10),
                                        child: Text(
                                          "${_.mmmodels[index].deaths}",
                                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                        ))
                                     ]
                                   )
                                  ),
                                 ),
                                ],
                              );
                            }),
                      )),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:4.0),
                      child: Container(
                          padding: EdgeInsets.only(left:15,right:15,top:10),
                            height: 100,
                            child: ListView.builder(
                            itemCount: _.mmmodels.length,
                            itemBuilder: (context, index) {
                              return Row(    
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                              children: <Widget>[
                                 Expanded(
                                   child: Card(
                                   color:Colors.green,
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         margin:EdgeInsets.only(top:10, bottom:10),
                                         child:Text(
                                           "RECOVERED",
                                            style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                         )
                                       ),
                                       Container(
                                        margin:EdgeInsets.only(top:10, bottom:10),
                                        child: Text(
                                          "${_.mmmodels[index].recovered}",
                                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                        )
                                          )
                                     ]
                                   )
                                  ),
                                 ),
                              Expanded(
                                   child: Card(
                                   color:Colors.lightBlue,
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         margin:EdgeInsets.only(top:10, bottom:10),
                                         child:Text(
                                           "ACTIVE",
                                            style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                         )
                                       ),
                                       Container(
                                        margin:EdgeInsets.only(top:10, bottom:10),
                                        child: Text(
                                          "${_.mmmodels[index].active}",
                                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                        ))
                                     ]
                                   )
                                  ),
                                 ),
                              Expanded(
                                   child: Card(
                                   color:Colors.purple,
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         margin:EdgeInsets.only(top:10, bottom:10),
                                         child:Text(
                                           "CRITICAL",
                                            style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                         )
                                       ),
                                       Container(
                                        margin:EdgeInsets.only(top:10, bottom:10),
                                        child: Text(
                                          "N/A",
                                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:16.0)
                                        ))
                                     ]
                                   )
                                  ),
                                 ),
                                ],
                              );
                            }),
                      )),
                  //SizedBox(height:10),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:16.0) ,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal:10.0,
                        vertical:20.0,
                      ),
                      height: 130.0,
                      padding:EdgeInsets.all(10.0),
                      decoration:BoxDecoration(
                        color:Colors.white70,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                         Image.asset('assets/mask.png'),
                         Column(
                           children:<Widget>[
                             Text(
                               "နေအိမ်ပြင်ပသို့",
                               style:TextStyle(color:Colors.blueGrey,fontWeight:FontWeight.bold,fontSize:16.0)
                              ),
                              Text(
                               "မဖြစ်မနေထွက်ရမည်ဆိုပါက",
                               style:TextStyle(color:Colors.blueGrey,fontWeight:FontWeight.bold,fontSize:14.0)
                              ),
                              Text(
                               "Mask တပ်ပါ။",
                               style:TextStyle(color:Colors.blueGrey,fontWeight:FontWeight.bold,fontSize:14.0)
                              )
                           ]
                         )
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height:10),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:16.0) ,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal:10.0,
                        vertical:20.0,
                      ),
                      height: 130.0,
                      padding:EdgeInsets.all(10.0),
                      decoration:BoxDecoration(
                        color:Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Image.asset('assets/hand.png',width: 100,),
                         Column(
                           children:<Widget>[
                             Text(
                               "အပြင်မှပြန်လာပါက",
                               style:TextStyle(color:Colors.blueGrey,fontWeight:FontWeight.bold,fontSize:16.0)
                              ),
                              Text(
                               "လက်ဆေးပါ။",
                               style:TextStyle(color:Colors.blueGrey,fontWeight:FontWeight.bold,fontSize:16.0)
                              ),
                           ]
                         )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:16.0) ,
                    child: Container(
                      height: 90.0,
                      padding:EdgeInsets.all(10.0),
                      decoration:BoxDecoration(
                        color:Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)
                        )
                      ),
                      child:ListTile(
                        onTap: (){
                          Get.toNamed("/state");
                        },
                        title:Text(
                          "တိုင်းဒေသကြီး/ပြည်နယ်\nအလိုက်ပိုးတွေ့စာရင်း",
                          style:TextStyle(color:Colors.greenAccent,fontWeight:FontWeight.bold)
                          ),
                        trailing: Icon(
                          Icons.navigate_next,
                          size:40,
                          color:Colors.greenAccent,
                          
                          ),
                      )
                    ),
                  ),
                 // SizedBox(height:30),
                ]),
          );
          }
       
        });
  }
}