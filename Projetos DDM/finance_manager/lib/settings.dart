import 'package:finance_manager/widgets/cashTrack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CashTrack',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CashTrack(),
    );
  }
}