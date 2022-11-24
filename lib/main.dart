import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:todayworkings/check_list.dart';
import 'package:todayworkings/field_map.dart';
import 'package:todayworkings/floor_info.dart';
import 'package:todayworkings/worker_phone_list.dart';
import 'package:todayworkings/working_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      //home: FloorInfo(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white.withOpacity(0.8),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '현장 지도',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Back(),
      ),
    );
  }
}
