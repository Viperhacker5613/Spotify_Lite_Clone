import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
          'Privacy Settings',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
      body: ListTile(
        //contentPadding: EdgeInsets.only(left: 0),
        title: Text('Private session', style: TextStyle(color: Colors.white)),
        subtitle: Text("Start a private session to listen anonymously"),
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
