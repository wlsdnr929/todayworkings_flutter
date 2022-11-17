import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:todayworkings/check_list.dart';
import 'package:todayworkings/field_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            '현장지도',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: DraggableBottomSheet(
          minExtent: 150,
          useSafeArea: false,
          curve: Curves.easeIn,
          previewWidget: PreModal(),
          expandedWidget: Modal(),
          backgroundWidget: Back(),
          onDragging: (pos) {},
        ),
      ),
    );
  }
}
