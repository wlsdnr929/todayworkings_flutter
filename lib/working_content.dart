import 'package:flutter/material.dart';

class WorkingContent extends StatelessWidget {
  WorkingContent({super.key});
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
            child: Icon(
              Icons.menu,
              color: Colors.grey[400],
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
