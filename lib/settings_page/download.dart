import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Dwonload Settings',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
      body: ListTile(
        //contentPadding: EdgeInsets.only(left: 0),
        title: Text('Download cellular', style: TextStyle(color: Colors.white)),
        subtitle: Text("Recommended setting: Off"),
        trailing: Switch(
          value: isToggled,
          activeColor: Colors.green,
          inactiveThumbColor: Colors.grey,

          onChanged: (value) {
            setState(() {
              isToggled = value;
            });
          },
        ),
      ),
    );
  }
}
