import 'package:flutter/material.dart';

class Explicit extends StatefulWidget {
  const Explicit({super.key});

  @override
  State<Explicit> createState() => _ExplicitState();
}

class _ExplicitState extends State<Explicit> {
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
          'Explicit Settings',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
      body: ListTile(
        //contentPadding: EdgeInsets.only(left: 0),
        title: Text(
          'Allow explicit content',
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text("Turn off to skip explicit content"),
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
