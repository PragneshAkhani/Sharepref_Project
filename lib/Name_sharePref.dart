import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Namepref extends StatefulWidget {
  const Namepref({super.key});

  @override
  State<Namepref> createState() => _NameprefState();
}

class _NameprefState extends State<Namepref> {
  TextEditingController txtN = TextEditingController();
  String myname = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_SaveName();
    _GetName();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name_sharepref'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: txtN,
              decoration: InputDecoration(
                hintText: 'Enter a name',
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                _SaveName();
              },
              child: Text('Saved Your Name'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                //_GetName();
              },
              child: Text('Get Your Name'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton( 
              onPressed: () {
                _RemoveName();
              },
              child: Text('Removed Your Name'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              myname,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }

  void _SaveName()async{
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('action', txtN.text);
    //final String? action = prefs.getString('action');
    setState(() {
      // myname = (prefs.getString('action')!);
      myname = 'Saved';
      //myname = 'Your Name : $action';
    });
  }
  void _GetName()async{
    var prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('action');
    setState(() {
      myname = 'Your Name : $action';
    });
  }
  void _RemoveName()async{
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove('action');
    setState(() {
      myname = 'Removed';
    });
  }
}
