import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePref extends StatefulWidget {
  const SharePref({super.key});

  @override
  State<SharePref> createState() => _SharePrefState();
}

class _SharePrefState extends State<SharePref> {
  TextEditingController txt = TextEditingController();
  String mytext = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share_Pref'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                'Share_Preferences_Demo',
                style: TextStyle(fontSize: 24),
              ),
              TextFormField(
                controller: txt,
                decoration: InputDecoration(hintText: 'Enter Value'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _SaveData();
                },
                child: Text('Save'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _GetData();
                },
                child: Text('Get'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _RemoveData();
                },
                child: Text('Remove'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                mytext,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _SaveData() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 100);
    setState(() {
      mytext = 'Saved';
    });
  }

  void _GetData() async {
    var prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    setState(() {
      mytext = 'Get data : $counter';
    });
  }

  void _RemoveData() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove('counter');
    setState(() {
      mytext = 'Removed';
    });
  }
}
