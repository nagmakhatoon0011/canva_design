// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});
//
//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }
//
// class _SecondPageState extends State<SecondPage> {
//   var titlecontroller=TextEditingController();
//   var subtitlecontroller=TextEditingController();
//     void  storedata(){
//    var title=titlecontroller.text;
//    var subtitle=subtitlecontroller.text;
//    if(title.isNotEmpty && subtitle.isNotEmpty){
//      Navigator.pop(context,{
//        "title":title,"subtitle":subtitle,
//      });
//    }
//  }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           body: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
//                 child: TextField(controller:titlecontroller,decoration: InputDecoration(hintText:"Title",border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
//                 child: TextField(controller:subtitlecontroller,decoration: InputDecoration(hintText: "Subtitle",border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
//               ),
//               SizedBox(height: 20,),
//               ElevatedButton(onPressed: storedata, child: Text("Submit"),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
//               ),
//             ],
//           ),
//
//     ));
//   }
// }
