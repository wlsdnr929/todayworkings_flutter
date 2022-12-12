import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:todayworkings/check_list/check_list.dart';
import 'package:todayworkings/check_list/check_list_detail.dart';
import 'package:todayworkings/check_list/check_list_modify.dart';

import '../field_map/field_map.dart';

class CheckListCalendar extends StatefulWidget {
  const CheckListCalendar({super.key});

  @override
  State<CheckListCalendar> createState() => _CheckListCalendarState();
}

class _CheckListCalendarState extends State<CheckListCalendar> {
  var _selectedDay; // 클릭한 날짜
  var _focusedDay = DateTime.now();

  Map<DateTime, List<Event>> events = {
    DateTime.utc(2022, 12, 7): [Event('title'), Event('title2')],
    DateTime.utc(2022, 12, 16): [Event('title3')],
  };

  List<Event> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '현장 점검',
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
              markerSize: 5,
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
              markerDecoration: BoxDecoration(
                color: Color(0xff3988FF),
                shape: BoxShape.circle,
              ),
              markersAutoAligned: false,
              markersAlignment: Alignment.topCenter,
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
            eventLoader: _getEventsForDay,
          ),
        ],
      ),
    );
  }
}

class Event {
  String title;

  Event(this.title);
}

class CalendarModal extends StatelessWidget {
  CalendarModal({super.key});

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

class CalendarModalListItem extends StatefulWidget {
  const CalendarModalListItem({super.key});

  @override
  State<CalendarModalListItem> createState() => _CalendarModalListItemState();
}

class _CalendarModalListItemState extends State<CalendarModalListItem> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    //buttonElevation: 0,
                    customButton: const Icon(
                      Icons.more_vert,
                      size: 25,
                      color: Colors.grey,
                    ),
                    customItemsHeights: [
                      ...List<double>.filled(MenuItems.firstItems.length, 36),
                    ],
                    items: [
                      ...MenuItems.firstItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                          value: item,
                          child: MenuItems.buildItem(item),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      MenuItems.onChanged(context, value as MenuItem);
                    },
                    itemHeight: 32,
                    itemPadding: const EdgeInsets.only(left: 16, right: 16),
                    dropdownWidth: 100,
                    dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    dropdownElevation: 8,
                    offset: const Offset(-60, 48),
                  ),
                ),
              ],
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

class MenuItem {
  final String text;
  //final IconData icon;

  const MenuItem({
    required this.text,
    //required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [content, modify, delete];
  //static const List<MenuItem> secondItems = [logout];

  static const content = MenuItem(text: '내용보기');
  static const modify = MenuItem(text: '수정');
  static const delete = MenuItem(text: '삭제');

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        //Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.content:
        //Do something
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckListDetail(),
          ),
        );
        break;
      case MenuItems.modify:
        //Do something
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckListModify(),
          ),
        );
        break;
      case MenuItems.delete:
        //Do something
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                title: Text(
                  '정말 삭제하시겠습니까?',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                titlePadding: EdgeInsets.all(16),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 320,
                          height: 60,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Color(0xff3988FF),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {
                              Navigator.of(context).pop();
                              showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      title: Text(
                                        '삭제되었습니다',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.center,
                                      ),
                                      titlePadding: EdgeInsets.all(16),
                                      actions: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                width: 320,
                                                height: 60,
                                                child: OutlinedButton(
                                                  style: OutlinedButton.styleFrom(
                                                      backgroundColor:
                                                          Color(0xff3988FF),
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10)))),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    '확인',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: Text(
                              '확인',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 60,
                          width: 320,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.grey, width: 1),
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              '취소',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            });

        break;
    }
  }
}
