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
    return Stack(
      children: [
        Container(
          height: 450,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 134,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[400]),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalendarModalListItem(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 20,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3988FF),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 350,
                  child: Text(
                    '오늘의 점검 시작',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onTap: () {},
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CalendarModalListItem extends StatelessWidget {
  const CalendarModalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              label: Container(
                alignment: Alignment.center,
                width: 50,
                child: Text(
                  '진행 중',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              backgroundColor: Color(0xff3988FF),
            ),
            Text(
              '김안전',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
            Text(
              '안전점검 이름',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              '2022.04.05. 16:30',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
