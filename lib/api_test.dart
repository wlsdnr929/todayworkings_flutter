import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Todos>> fetchApiModel() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List)
        .map((e) => Todos.fromJson(e))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  late Future<List<Todos>> futureApiModel;

  @override
  void initState() {
    super.initState();
    futureApiModel = fetchApiModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("api 테스트"),
      ),
      body: FutureBuilder<List<Todos>>(
          future: futureApiModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Text("오늘은 여기까지");
                  });
            }
            // return Container(
            //   height: 200,
            //   width: MediaQuery.of(context).size.width,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       ...snapshot.data!.map(
            //         (e) => Text('이름: ${e.title!}'),
            //       ),
            //       ...snapshot.data!.map(
            //         (e) => Text('생일: ${e.id!}'),
            //       ),
            //     ],
            //   ),
            // );
            else if (snapshot.hasError) {
              return Text('에러');
            }
            return const CircularProgressIndicator();
          }),
      // body: Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('이름: '),
      //       Text('생년월일: '),
      //       Text('혈액형: '),
      //     ],
      //   ),
      // ),
    );
  }
}

class Todos {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todos({this.userId, this.id, this.title, this.completed});

  Todos.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }
}
