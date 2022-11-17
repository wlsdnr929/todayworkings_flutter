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
        body: SnappingSheet(
          //모달 손잡이 오바해서 잡아땡기기 가능 여부
          lockOverflowDrag: true,
          // 메인 페이지
          child: Back(),
          //모달 손잡이 높이
          grabbingHeight: 75,

          //아래쪽 모달
          sheetBelow: SnappingSheetContent(
            draggable: true,
            // TODO: Add your sheet content here
            child: Modal(),
          ),
        ),
      ),
    );
  }
}
