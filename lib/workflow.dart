import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkFlow extends StatelessWidget {
  const WorkFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Workflow',
            style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        centerTitle:false,
      ),
    );
  }
}
