import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckList extends StatefulWidget {
  CheckList({super.key});

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  var flag1 = false;
  var flag2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 32,
              ),
              Container(
                width: 320.0,
                height: 160.0,
                child: flag1
                    ? OutlinedButton(
                        child: Text(
                          '일별 점검',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 24),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue.shade700,
                          side: BorderSide(color: Colors.blue, width: 1.5),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onPressed: () {
                          if (flag1 == false && flag2 == false) {
                            flag1 = true;
                          } else if (flag1 == false && flag2 == true) {
                            flag1 = !flag1;
                            flag2 = !flag2;
                          } else if (flag1 == true && flag2 == false) {
                            flag1 = !flag1;
                            flag2 = !flag2;
                          }
                          setState(() {});
                        },
                      )
                    : OutlinedButton(
                        child: Text(
                          '일별 점검',
                          style: TextStyle(
                              color: Colors.blue.shade500,
                              fontWeight: FontWeight.w600,
                              fontSize: 24),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.blue.shade700,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.blue, width: 1.5),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onPressed: () {
                          if (flag1 == false && flag2 == false) {
                            flag1 = true;
                          } else if (flag1 == false && flag2 == true) {
                            flag1 = !flag1;
                            flag2 = !flag2;
                          } else if (flag1 == true && flag2 == false) {
                            flag1 = !flag1;
                            flag2 = !flag2;
                          }
                          setState(() {});
                        },
                      ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                width: 320.0,
                height: 160.0,
                child: flag2
                    ? OutlinedButton(
                        child: Text(
                          '분기 점검',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 24),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue.shade700,
                          side: BorderSide(color: Colors.blue, width: 1.5),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onPressed: () {
                          if (flag1 == false && flag2 == false) {
                            flag2 = true;
                          } else if (flag1 == false && flag2 == true) {
                            flag2 = !flag2;
                            flag1 = !flag1;
                          } else if (flag1 == true && flag2 == false) {
                            flag1 = !flag1;
                            flag2 = !flag2;
                          }
                          setState(() {});
                        },
                      )
                    : OutlinedButton(
                        child: Text(
                          '분기 점검',
                          style: TextStyle(
                              color: Colors.blue.shade500,
                              fontWeight: FontWeight.w300,
                              fontSize: 24),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.blue.shade700,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.blue, width: 1.5),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onPressed: () {
                          if (flag1 == false && flag2 == false) {
                            flag2 = true;
                          } else if (flag1 == false && flag2 == true) {
                            flag2 = !flag2;
                            flag1 = !flag1;
                          } else if (flag1 == true && flag2 == false) {
                            flag1 = !flag1;
                            flag2 = !flag2;
                          }
                          setState(() {});
                        },
                      ),
              ),
              Spacer(),
              Container(
                width: 320.0,
                height: 60.0,
                child: OutlinedButton(
                  child: Text(
                    '다음',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 24),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue.shade500,
                    side: BorderSide(color: Colors.blue, width: 1.5),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ],
    );
  }
}
