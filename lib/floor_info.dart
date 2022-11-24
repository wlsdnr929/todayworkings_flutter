import 'package:flutter/material.dart';

class FloorInfo extends StatelessWidget {
  FloorInfo({super.key});

  var floor_list = [
    '지하3층',
    '지하2층',
    '지하1층',
    '1층',
    '2층',
    '3층',
    '4층',
    '5층',
    '6층',
    '7층',
    '8층'
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
          '층별 안내',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 8,
            color: Colors.grey.shade100,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  height: 52,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      floor_list[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              }),
              itemCount: floor_list.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 1,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
