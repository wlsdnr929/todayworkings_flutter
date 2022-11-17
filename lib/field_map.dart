import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;

class FieldMap extends StatelessWidget {
  FieldMap({super.key});

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
