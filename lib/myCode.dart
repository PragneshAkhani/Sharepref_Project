import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyCode extends StatefulWidget {
  const MyCode({super.key});

  @override
  State<MyCode> createState() => _MyCodeState();
}

const DGreen = Color(0xff00b894);
const DBlue = Color(0xff0984e3);
const DRed = Color(0xffd63031);

class _MyCodeState extends State<MyCode> {
  //var darkGreen = Color(0xff00b894);
  Color GColor = DGreen;
  String _gGreen = "GColor";

  Color BColor = DBlue;
  String _bBlue = "BColor";

  Color RColor = DRed;
  String _rRed = "RColor";

  var FinalColor1;

  @override
  void initState() {
    super.initState();
    _GetColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Color'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 70),
            child: Container(
              height: 250,
              width: 250,
              color: FinalColor1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 60),
            child: ElevatedButton(
              onPressed: () {
                _SaveColor();
              },
              child: Text('Green'),
            ),
          ),
        ],
      ),
    );
  }

  _SaveColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var G1Color = GColor.toString();
    await prefs.setString('NewColor', G1Color);
  }

  _GetColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _DGreen1 = prefs.getString("NewColor");
    setState(() {
      FinalColor1 = _DGreen1 as Color;
    });
  }
}
