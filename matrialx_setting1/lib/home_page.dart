import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isswitchwifi1= true;
  bool isswitchwifi2=true;

  bool isswichblutooth1 = false;
  bool isswichblutooth2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white70,
      appBar:AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_back,color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text("Device Setting",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:110),
            child: Icon(Icons.search,color: Colors.white,),)],),
            backgroundColor: Colors.blueAccent,),
      body: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.only(top:15,left:15,bottom:15),
          child: Text("GENERAL SETTING",style: TextStyle(color:Colors.black38),),
        ),
        Container(
          color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Icon(Icons.supervisor_account,color: Colors.black38,size: 20,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Text("Account",style: TextStyle(fontSize:15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:220,top: 20),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.black38,size:15,),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Icon(Icons.no_encryption_gmailerrorred,color: Colors.redAccent,size:18,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Text("Gmail",style: TextStyle(fontSize:15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240,top: 20),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.black38,size:15,),
                )
                ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,bottom:25),
                  child: Icon(Icons.sync,color: Colors.blueAccent,size:20,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20,bottom:25),
                  child: Text("Sync Data",style: TextStyle(fontSize:15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:212,top: 20,bottom:25),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.black38,size:15,),
                )
              ],
            )
          ],
        ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:15,left:15,bottom:15),
          child: Text("NETWORK",style: TextStyle(color:Colors.black38),),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Icon(Icons.sim_card,color: Colors.black38,size: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15,left:15,),
                    child: Text("Simcard & Network",style: TextStyle(fontSize:15),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15,left:145,),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black38,size:15,),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Icon(Icons.wifi,color: Colors.orange,size:20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Text("Wi-Fi",style: TextStyle(fontSize:15),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:200),
                    child: Switch(value: isswitchwifi1, onChanged: (value) {
                      setState(() {
                        isswitchwifi1 = value;});},
                      activeColor: Colors.blueAccent,
                      activeTrackColor: Colors.pinkAccent,
                      inactiveTrackColor: Colors.grey,),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Icon(Icons.bluetooth,size: 20,color: Colors.blueAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Text("Bluetooth",style: TextStyle(fontSize:15),),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left:170),
                   child: Switch(value: isswichblutooth1, onChanged: (value) {
                     setState(() {
                       isswichblutooth1 = value;
                     });
                   },
                     activeColor: Colors.blueAccent,
                     activeTrackColor: Colors.pinkAccent,
                     inactiveTrackColor: Colors.grey,),
                 )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20,bottom: 25),
                    child: Icon(Icons.more_horiz,color: Colors.black38,size: 20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20,bottom: 25),
                    child: Text("More",style: TextStyle(fontSize:15),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left:237,bottom:25),
                    child: Icon(Icons.arrow_forward_ios,size:15,color: Colors.black38,),
                  )
                ],
              ),
      ],
    ),
    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 20,bottom: 15),
                      child: Text("SOUND",style: TextStyle(color:Colors.black38),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 20),
                                  child: Icon(Icons.do_not_disturb_on_total_silence,size:20,color: Colors.orange,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 20),
                                  child: Text("Slilent Mode",style: TextStyle(fontSize:15),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 145,top: 20),
                                  child: Switch(value: isswichblutooth2, onChanged: (value) {
                                    setState(() {
                                      isswichblutooth2 = value;
                                    });
                                  },
                                    activeColor: Colors.blueAccent,
                                    activeTrackColor: Colors.pinkAccent,
                                    inactiveTrackColor: Colors.grey,),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(Icons.vibration,color: Colors.purpleAccent,size: 20,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:20),
                                  child: Text("Vibrate Mode",style: TextStyle(fontSize:15),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 140),
                                  child: Switch(value: isswitchwifi2, onChanged: (value) {
                                    setState(() {
                                      isswitchwifi2 = value;});},
                                    activeColor: Colors.blueAccent,
                                    activeTrackColor: Colors.pinkAccent,
                                    inactiveTrackColor: Colors.grey,),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 20),
                                  child: Icon(Icons.snooze_outlined,size: 20,color: Colors.green,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 20),
                                  child: Text("Sound Volume",style: TextStyle(fontSize:15),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 165),
                                  child: Icon(Icons.arrow_forward_ios,size:15,color: Colors.black38,),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:20,top: 20,bottom: 20),
                                  child: Icon(Icons.phonelink_ring,size: 20,color: Colors.black38,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,bottom: 20),
                                  child: Text("Ringtone",style: TextStyle(fontSize:15),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left:200,bottom: 20),
                                  child: Icon(Icons.arrow_forward_ios,size:15,color: Colors.black38,),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );



  }
}
