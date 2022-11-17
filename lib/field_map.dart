import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;

class FieldMap extends StatelessWidget {
  FieldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Modal();
  }
}

class Back extends StatelessWidget {
  Back({super.key});

  var text_list = ['위험요소', '작업중지', '진행중', '장비', '더보기'];
  var image_list = [
    'assets/images/danger.svg',
    'assets/images/stop.svg',
    'assets/images/progress.svg',
    'assets/images/equipment.svg',
    'assets/images/null.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 10,
            color: Colors.grey.shade50,
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
                        foregroundImage: svg_provider.Svg(image_list[index]),
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
        ],
      ),
    );
  }
}

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '현대 백화점 공사현장',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '인천 연수구 송도대로 123',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                        image: svg_provider.Svg(
                          'assets/images/danger.svg',
                          size: Size(36, 36),
                        ),
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
                        image: svg_provider.Svg(
                          'assets/images/progress.svg',
                          size: Size(36, 36),
                        ),
                      ),
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
                        image: svg_provider.Svg(
                          'assets/images/person.svg',
                          size: Size(36, 36),
                        ),
                      ),
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
                        image: svg_provider.Svg(
                          'assets/images/rubber_cone.svg',
                          size: Size(36, 36),
                        ),
                      ),
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
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff3988FF),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {},
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
    );
  }
}
