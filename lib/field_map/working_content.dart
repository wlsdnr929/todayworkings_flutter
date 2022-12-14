import 'package:flutter/material.dart';
import 'package:todayworkings/field_map/floor_info.dart';
import 'package:todayworkings/field_map/worker_phone_list.dart';

class WorkingContent extends StatelessWidget {
  WorkingContent({super.key});
  var floor_list = [];
  var image_list = [
    'assets/images/big_danger.png',
    'assets/images/big_progress.png',
    'assets/images/person.png',
    'assets/images/rubber_cone.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '작업 내용',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.grey[400],
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FloorInfo()));
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 56,
            color: Color(0xff3988FF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '전체',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '1층',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '2층',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '3층',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '4층',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 248,
            color: Colors.grey.withOpacity(0.8),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '현대 백화점 공사현장',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
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
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        InkWell(
                          child: Column(
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WorkerPhoneList()));
                          },
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
                      height: 64,
                    ),
                    Text(
                      '작업내용',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '시공일',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '2022.06.22',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '위험요소',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  '3건',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Icon(Icons.chevron_right, color: Colors.grey),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '부상자 수',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  '3명',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Icon(Icons.chevron_right, color: Colors.grey),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '작업간섭(동일장소 중첩작업)',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  '2건',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Icon(Icons.chevron_right, color: Colors.grey),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '장비',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  '3개',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Icon(Icons.chevron_right, color: Colors.grey),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      '주의사항',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '주의사항입니다',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
