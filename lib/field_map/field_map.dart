import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;
import 'package:todayworkings/field_map/working_content.dart';

class FieldMap extends StatelessWidget {
  FieldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Modal();
  }
}

class Back extends StatefulWidget {
  Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  var text_list = ['위험요소', '작업중지', '진행중', '장비', '더보기'];
  var image_list = [
    'assets/images/danger.png',
    'assets/images/stop.png',
    'assets/images/progress.png',
    'assets/images/equipment.png',
    'assets/images/null.png',
  ];
  var modal_flag = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 10,
            color: Colors.grey[50],
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: text_list.length,
              itemBuilder: ((context, index) {
                return Row(
                  children: [
                    Chip(
                      labelPadding: EdgeInsets.all(2.0),
                      avatar: CircleAvatar(
                        foregroundImage: AssetImage(image_list[index]),
                        backgroundColor: Colors.white70,
                      ),
                      label: Text(
                        text_list[index],
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 2.0,
                      shadowColor: Colors.grey[60],
                      padding: EdgeInsets.all(8.0),
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                );
              }),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          ElevatedButton(
            child: Text('검색 하기'),
            onPressed: (() {
              //modal_flag = !modal_flag;
              showModalBottomSheet<void>(
                barrierColor: Colors.transparent.withOpacity(0.0),
                context: context,
                builder: (BuildContext context) {
                  return PreModal();
                },
              );
            }),
          ),
          ElevatedButton(
            child: Text('상세 정보'),
            onPressed: (() {
              //modal_flag = !modal_flag;
              showModalBottomSheet<void>(
                barrierColor: Colors.transparent.withOpacity(0.0),
                context: context,
                builder: (BuildContext context) {
                  return Modal();
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

class Modal extends StatelessWidget {
  Modal({super.key});
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
                    '현대 백화점 공사현장',
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
                                builder: (context) => WorkingContent()));
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

class PreModal extends StatelessWidget {
  const PreModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 4,
              width: 134,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[400]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '분류',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey[400],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 190,
                            height: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '검색',
                                hintStyle: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                            color: Colors.grey[400],
                            padding: EdgeInsets.zero,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
