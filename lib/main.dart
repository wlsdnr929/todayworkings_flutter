import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:todayworkings/check_list/check_list.dart';
import 'package:todayworkings/check_list/check_list_calendar.dart';
import 'package:todayworkings/check_list/check_list_detail.dart';
import 'package:todayworkings/check_list/check_list_modify.dart';
import 'package:todayworkings/field_map/field_map.dart';
import 'package:todayworkings/field_map/floor_info.dart';
import 'package:todayworkings/field_map/worker_phone_list.dart';
import 'package:todayworkings/field_map/working_content.dart';
import 'package:todayworkings/notification/write_notification.dart';
import 'package:todayworkings/services/api_service.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  var test_string = 'test 중';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          //canvasColor: Colors.transparent,
        ),

        // api 연습
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: FutureBuilder<ApiResponseData>(
                  future: ApiService().termsSelect('service'),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState.done
                        ? Text(
                            snapshot.data!.resultData['terms_name'].toString())
                        : const CircularProgressIndicator();
                  }),
            ),
          ),
        )

        // home: Scaffold(
        //   resizeToAvoidBottomInset: false,
        //   backgroundColor: Colors.white.withOpacity(0.8),
        //   appBar: AppBar(
        //     centerTitle: true,
        //     title: Text(
        //       '현장 지도',
        //       style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        //     ),
        //     elevation: 0,
        //     backgroundColor: Colors.white,
        //   ),
        //   body: Back(),
        // ),

        //home: CheckListCalendarDetail(),
        //home: CheckListCalendar(),
        //home: CheckListModify(),

        //home: WriteNotification(),
        );
  }
}
