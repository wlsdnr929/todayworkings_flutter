import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:todayworkings/check_list.dart';

import 'field_map.dart';

class CheckListCalendar extends StatefulWidget {
  const CheckListCalendar({super.key});

  @override
  State<CheckListCalendar> createState() => _CheckListCalendarState();
}

class _CheckListCalendarState extends State<CheckListCalendar> {
  var _selectedDay; // 클릭한 날짜
  var _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '현장 지도',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 10,
            color: Colors.grey[50],
          ),
          TableCalendar(
            firstDay: DateTime.utc(2017, 11, 28),
            lastDay: DateTime.utc(2027, 11, 28),
            focusedDay: DateTime.now(),
            locale: 'ko-KR',
            daysOfWeekHeight: 30,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xff3988FF), width: 1.5),
              ),
              todayTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              selectedDecoration: BoxDecoration(
                color: Color(0xff3988FF),
                shape: BoxShape.circle,
              ),
              selectedTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              showModalBottomSheet<void>(
                barrierColor: Colors.transparent.withOpacity(0.0),
                context: context,
                builder: (BuildContext context) {
                  return CalendarModal();
                },
              );
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CalendarModal extends StatelessWidget {
  CalendarModal({super.key});
  var image_list = [
    'assets/images/big_danger.png',
    'assets/images/big_progress.png',
    'assets/images/person.png',
    'assets/images/rubber_cone.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 4,
                width: 134,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[400]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '여기 아직 수정 안 했음,,,',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '인천 연수구 송도대로 123',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFEAF2FF),
                              image: DecorationImage(
                                image: AssetImage(image_list[0]),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '2건',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFEAF2FF),
                              image: DecorationImage(
                                  image: AssetImage(image_list[1])),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '34%',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFEAF2FF),
                              image: DecorationImage(
                                  image: AssetImage(image_list[2])),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '123명',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFEAF2FF),
                              image: DecorationImage(
                                  image: AssetImage(image_list[3])),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '약간위험',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(80)),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xff3988FF),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckList()));
                      },
                      child: Text(
                        '작업내용',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
