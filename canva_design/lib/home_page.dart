import 'dart:math';

import 'package:canva_design/Modal.dart';
import 'package:canva_design/title_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var titleController=TextEditingController();
   List<Modal> personal=[
     Modal(title: "ajay",lavel: "math"),
     Modal(title: "rohit",lavel: "kotlin"),
     Modal(title: "Manoj",lavel: "java"),
     Modal(title: "kkkk",lavel: "ooooo"),

   ];

    bool ischeck=false;

   void add(){
     personal.add(Modal(title:titleController.text ));
     setState(() {

     });
   }
  final List<String> tasks = [
    "Data_Passing",
    "TabBar",
    "BackenData and FrontedData",
    "AppBar",
    "CheckBox,RatingBar,RadioBox",
    "ListBuilder",
    "TweenAnimation",
    "somthing Widget"
  ];
  final List<String> ideas = [
    "Learn Flutter Codding",
    "Start a YouTube channel",
    "you can follow good channel",
    "Daily Revision",
    "thinking for codding",
    "Daily Create 1 Project",
    "Code share anyperson"
  ];


  final List<Map<String, dynamic>> shoppingList = [
    {"item": "Shoes", "price": 2000},
    {"item": "T-shirt", "price": 500},
    {"item": "Watch", "price": 1500},
    {"item": "Trending Combo of Straightener", "price": 160},
    {"item": "Cap", "price": 250},
    {"item":"Kurti With Dupatta","price":800},
    {"item":"Socks","price":100},
    {"item":"Cross Body Bags","price":250}
  ];

  Icon itemIcon(String itemName) {
    switch (itemName.toLowerCase()) {
      case "shoes":
        return Icon(Icons.directions_run); // running shoe
      case "t-shirt":
        return Icon(Icons.checkroom); // clothing icon
      case "watch":
        return Icon(Icons.watch);
      case "Kurti":
        return Icon(Icons.wb_sunny); // sun icon (represents sunglasses)
      case "cap":
        return Icon(Icons.emoji_people); // head with cap
      default:
        return Icon(Icons.shopping_bag); // default
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

       child: DefaultTabController(length: 4, child: Scaffold(
         appBar: AppBar(
           backgroundColor:Color(0xfff0f9ff),
           title: Column(
             children: [
               Padding(
               padding: const EdgeInsets.only(top: 25,right:80),
               child: ShaderMask(shaderCallback: (bounds) => LinearGradient(colors:[Colors.deepPurpleAccent,Colors.purple,Colors.purpleAccent,Colors.deepPurple,Colors.deepPurple],).createShader(Rect.fromLTWH(0, 0, bounds.width,bounds.height)),blendMode: BlendMode.srcIn,child: Text("TaskFlow",style: TextStyle(fontWeight: FontWeight.bold),),),
             ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: Text("Orgnize your life with beautiful list",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
               )
             ],
           ),
    bottom: TabBar(
    labelColor: Colors.blueAccent,
     isScrollable: true,

     // Unselected tab text color
    indicatorColor: Colors.blueAccent,
    indicatorWeight: 1,
    tabs: [
    Tab(text: "Personal"),
    Tab(text: "Work"),
    Tab(text: "Shopping"),
    Tab(text: "Ideal"),
    ],
    ),),

    body: TabBarView(children:[
           Container(
             height: 400,
             width: 100,
             color: Colors.white,
             child: ListView(
               children: [
                 Row(
                   children: [
                     Expanded(
                         child: ShaderMask(shaderCallback:  (bounds) => LinearGradient(colors: [CupertinoColors.black,Colors.black,Colors.black],).createShader(Rect.fromLTRB(0, 0, bounds.right, bounds.bottom)),blendMode: BlendMode.srcIn,child: Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20),
                           child: Text("Personal Tasks",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                         ),),),
                     SizedBox(),
                     Padding(
                       padding: const EdgeInsets.only(top: 20,right: 10),
                       child: Container(height: 23,width:70, padding: EdgeInsets.all(16),
                         decoration: BoxDecoration(color:Colors.blueAccent, border: Border.all(color: Colors.blueAccent, width: 2,),borderRadius: BorderRadius.circular(15),
                         ),
                       ),
                     )],),

                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                     children: [
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: TextField(controller: titleController,decoration: InputDecoration(hintText: "Call mom for her birthday", border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),)),),
                       ),
                       SizedBox(width: 10, height: 20),
                       Padding(
                         padding: const EdgeInsets.only(right: 10),
                         child: ElevatedButton(
                           onPressed: () {
                             add();
                           },
                           style: ElevatedButton.styleFrom(
                             padding: EdgeInsets.zero, // Important for Ink to work properly
                             shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(6),),),
                           child: Ink(
                             decoration: BoxDecoration(gradient: LinearGradient(colors: [ Colors.blueAccent,Colors.purple,],),
                               borderRadius: BorderRadius.circular(8),
                               // border: Border.all(color: Colors.purple, width:1),
                             ),
                             child: Container(
                               width: 70,
                               height: 55,
                               alignment: Alignment.center,
                               child: Text(
                                 "Add",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 25),
                   child: ListView.separated(
                     separatorBuilder: (context, index) {
                     return Container(height: 3,color: Color(0xfff0f9ff),);
                                   },
                                  itemCount: personal.length,
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemBuilder:(context, index) {
                     return Padding(
                       padding: const EdgeInsets.only(left:5,right:5),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 15,left: 5,right: 5),
                         child: Card(
                          shadowColor: Colors.white,
                          color:Color(0xfff0f9ff),
                          child: ListTile(
                       leading: Checkbox(value: personal[index].ischcek, onChanged: (value) {
                       personal[index].ischcek=value!;
                       setState(() {});
                       },),
                            title:  Text(personal[index].title,style: TextStyle(decoration: personal[index].ischcek ? TextDecoration.lineThrough:TextDecoration.none),),
                            subtitle: Text(personal[index].lavel,style: TextStyle(color:Colors.black38)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

                              trailing: IconButton(onPressed: () {
                              personal.removeAt(index);
                              setState(() {});
                              }, icon: Icon(Icons.delete,color:Color(0xffbac2cc)))
                          ),
                         ),
                       ),
                     );},
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:417),
                   child: Row(
                     children: [
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("Filter",style: TextStyle(fontWeight: FontWeight.bold),),
                         ),
                       ),
                       SizedBox(width: 10, height: 20),
                       Padding(
                         padding: const EdgeInsets.only(right: 10),
                         child: ElevatedButton(
                           onPressed: () {
                             // add();

                           },
                           style: ElevatedButton.styleFrom(
                             padding: EdgeInsets.zero, // Important for Ink to work properly
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),),
                           child: Ink(
                             decoration: BoxDecoration(gradient: LinearGradient(colors: [ Colors.red,Colors.green,],),
                               borderRadius: BorderRadius.circular(8),
                               // border: Border.all(color: Colors.purple, width:1),
                             ),
                             child: Container(
                               width: 100,
                               height:30,
                               alignment: Alignment.center,
                               child: Text(
                                 "New List",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),

               ],
             ),
           ),
           Container(
             color:Colors.white,
             child: ListView(
               children: [
                 ListView.separated(separatorBuilder: (context, index) {
                   return Container(height: 2,color:Color(0xffeff6ff),);
                 },
                   itemCount: tasks.length,
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.only(left: 5,right: 5,top: 15),
                     child: Card(
                       color: Colors.white,
                       child: ListTile(
                         title: Text(tasks[index],style: TextStyle(color: Colors.black87),),
                         trailing: Icon(Icons.check_box_rounded,color:Colors.green,),
                       ),
                     ),
                   );
                   },
                 )
               ],
             ),
           ),
          Container(
           color: Colors.white,
             child: ListView.separated(
               separatorBuilder: (context, index) {
                 return Container(height: 3,color:Color(0xffeff6ff),);
               },
               itemCount: shoppingList.length,
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemBuilder: (context, index) {
                 return Card(
                   margin: EdgeInsets.all(10),
                   elevation: 4,
                   child: ListTile(
                     title: Text(shoppingList[index]["item"]),
                     subtitle: Text("price:${shoppingList[index]["price"]}"),
                     trailing: Icon(Icons.check_circle,color: Colors.green,),
                     leading: itemIcon(shoppingList[index]["item"]),),);},),
                  ),
           Container(
             color: Colors.white,
             child: ListView(
               children: [
                 ListView.separated(separatorBuilder: (context, index) {
                   return Container(height: 2,color:Color(0xffeff6ff),);
                   },
                 itemCount: ideas.length,
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index) {
                     return Card(
                       margin: EdgeInsets.all(10),
                       elevation: 4,
                       child: ListTile(
                         title: Text(ideas[index]),
                         trailing: Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,),
                       ),
                     );
                   },
                 )
               ],
             ),
           )
         ]
         ),
       )),
        );
  }
}
