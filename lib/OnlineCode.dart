
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  const HomePage({super.key});
  //final String title;
}

//Green Theme
const lightGreen = Color(0xff55efc4);
const darkGreen = Color(0xff00b894);

//Blue Theme
const lightBlue = Color(0xff74b9ff);
const darkBlue = Color(0xff0984e3);

//Red Theme
const lightRed = Color(0xffff7675);
const darkRed = Color(0xffd63031);

class _HomePageState extends State<HomePage> {
  Color lightColor = lightGreen;
  String _lightColor = "lightColor";
  var darkColor;


  // String _lightColor1 = "lightColor1";
  // Color darkColor1 = darkBlue;

  bool isDark = false;


  @override
  void initState() {
    super.initState();
    getColor();
    //getColor1();
  }

  void saveColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('switchColor', _lightColor);
  }

   void getColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
     String? _lightColor = prefs.getString("switchColor");
    print('Color aayo == $darkColor');
    setState(() {
      //darkColor = darkGreen;
      // print('Green');
      _lightColor = darkColor;
      // if(darkColor == darkGreen){
      //   print('Green');
      //   darkColor;
      // }else if(darkColor == darkBlue){
      //   print('Blue');
      //   darkColor;
      // }else if(darkColor == darkRed){
      //   print('Red');
      //   darkColor;
      // }
    });
  }


  // void saveColor1() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('switchColor1', _lightColor1);
  // }


  // void getColor1() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final String? _lightColor1 = prefs.getString("switchColor1");
  //   setState(() {
  //     darkColor1 = darkBlue;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY COLOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     lightColor,
                //     darkColor,
                //   ],
                // ),
                color: darkColor,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: <Widget>[
                //Change Green
                ElevatedButton(
                  onPressed: () {
                    // setState(
                    //   () {
                    //     //lightColor = lightGreen;
                    //     darkColor = darkGreen;
                    //     //saveColor();
                    //   },
                    // );
                    darkColor = darkBlue;
                    saveColor();
                  },
                  child: Text(
                    "Green",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                //Change Blue
                // ElevatedButton(
                //   onPressed: () {
                //     // setState(
                //     //   () {
                //     //     // lightColor = lightBlue;
                //     //      darkColor = darkBlue;
                //     //     //saveColor();
                //     //   },
                //     // );
                //     darkColor = darkBlue;
                //     saveColor();
                //   },
                //   child: Text(
                //     "Blue",
                //     textAlign: TextAlign.center,
                //     style: TextStyle(fontSize: 10.0),
                //   ),
                // ),
                // //Change Red
                // ElevatedButton(
                //   onPressed: () {
                //     // setState(
                //     //   () {
                //     //     // lightColor = lightRed;
                //     //     darkColor = darkRed;
                //     //    // saveColor();
                //     //   },
                //     // );
                //     darkColor = darkRed;
                //     saveColor();
                //   },
                //   child: Text(
                //     "Red",
                //     textAlign: TextAlign.center,
                //     style: TextStyle(fontSize: 10.0),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
