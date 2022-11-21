import 'package:flutter/material.dart';

class WorkerPhoneList extends StatelessWidget {
  WorkerPhoneList({super.key});

  Map worker_info = {'name': '김아름', 'worktype': '인천 항만 하역, 하역 송달 작업'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '근무자',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Image.asset(
                                'assets/images/worker_profile_image.png',
                              ),
                              radius: 32,
                            ),
                            title: Text(
                              worker_info['name'],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              worker_info['worktype'],
                              style: TextStyle(fontSize: 16),
                            ),
                            trailing: CircleAvatar(child: Icon(Icons.call)),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              height: 60,
              color: Color(0xff3988FF),
              child: Expanded(
                child: Text(
                  '작업 중인 근로자 수 : 20명',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
