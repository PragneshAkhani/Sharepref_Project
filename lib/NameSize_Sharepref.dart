// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class NameSize extends StatefulWidget {
//   const NameSize({super.key});

//   @override
//   State<NameSize> createState() => _NameSizefState();
// }

// class _NameSizefState extends State<NameSize> {
//   TextEditingController txtN = TextEditingController();
//   //int ss = 0;
//   String mysize = '';
//   double _value = 5;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     //_SaveName();
//     _GetName();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Name_sharepref'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextFormField(
//               controller: txtN,
//               decoration: InputDecoration(
//                 hintText: 'Enter a name',
//                 // border: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(20),
//                 // ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 _SaveName();
//               //   Fluttertoast.showToast(
//               //       msg: "Update your font size \n Pls restart your app",
//               //       toastLength: Toast.LENGTH_SHORT,
//               //       gravity: ToastGravity.CENTER,
//               //       timeInSecForIosWeb: 2,
//               //       backgroundColor: Colors.teal,
//               //       textColor: Colors.white,
//               //       fontSize: 16.0);
//               },
//               child: Text('Saved Your Size'),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               'This is myFont Size $mysize',
//               style: TextStyle(fontSize: double.parse(mysize)),
//             ),
//             SizedBox(
//               height: 80,
//             ),
//             Text(
//               'Slider Size Update',
//               style: TextStyle(fontSize: _value),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Slider(
//               value: _value,
//               activeColor: Colors.teal,
//               inactiveColor: Colors.blueGrey,
//               onChanged: (double S) {
//                 setState(() {
//                   _value = S;
//                 });
//               },
//               //divisions: 10,
//               min: 0.0,
//               max: 50.0,
//             ),
//             //Text("Hello World", style: TextStyle(fontSize: 10 * _value)),
//           ],
//         ),
//       ),
//     );
//   }

//   void _SaveName() async {
//     var prefs = await SharedPreferences.getInstance();
//     var newdata = int.parse(txtN.text);
//     await prefs.setInt('fontsize', newdata);
//   }

//   void _GetName() async {
//     var prefs = await SharedPreferences.getInstance();
//     final int? myno = prefs.getInt('fontsize');
//     print("Data aayo == $myno");
//     setState(() {
//       mysize = '$myno';
//     });
//   }
//   // void _RemoveName()async{
//   //   var prefs = await SharedPreferences.getInstance();
//   //   await prefs.remove('action');
//   //   setState(() {
//   //     myname = 'Removed';
//   //   });
//   // }
// }
