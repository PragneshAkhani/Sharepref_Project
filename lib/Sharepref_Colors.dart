import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareprefColor extends StatefulWidget {
  const ShareprefColor({super.key});

  @override
  State<ShareprefColor> createState() => _ShareprefColorState();
}

class _ShareprefColorState extends State<ShareprefColor> {
  //String mycolor = '';
  dynamic Ncolor = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sharepref_Colors'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    // Color(0xffFFFFFF);
                    _Blue();
                  },
                  child: Text('Blue'),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Yellow'),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Teal'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 120,
            width: 120,
            
            color: Color(
              hexColor('#bfeb91'),
            ),
          ),
        ],
      ),
    );
  }

  void _Blue() async {
    var prefs = await SharedPreferences.getInstance();
    // Ncolor = Color(hexColor('#7f12b5')) as String;
    await prefs.setString('fontsize', '#bfeb91'.toColor());
    final String? myno = prefs.getString('fontsize');
    print("Data aayo == $myno");
    setState(() {
      Ncolor = '$myno';
    });
  }

  // void _GetName() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   final String? myno = prefs.getString('fontsize');
  //   print("Data aayo == $myno");
  //   setState(() {
  //     Ncolor = '$myno';
  //   });
  // }
}

int hexColor(String color) {
  String mycolor = '0xff' + color;
  mycolor = mycolor.replaceAll('#', '');
  int finalColor = int.parse(mycolor);
  return finalColor;
}

extension ColorExtension on String {
  toColor(){
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
