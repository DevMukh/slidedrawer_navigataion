import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PeoplePge extends StatelessWidget {
  const PeoplePge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'People Page',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0.0,
      ),
    );
  }
}
