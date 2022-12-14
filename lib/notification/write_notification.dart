import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WriteNotification extends StatefulWidget {
  const WriteNotification({super.key});

  @override
  State<WriteNotification> createState() => _WriteNotificationState();
}

class _WriteNotificationState extends State<WriteNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   backgroundColor: Colors.white,
        //   appBar: AppBar(
        //     iconTheme: IconThemeData(color: Colors.black),
        //     elevation: 0,
        //     backgroundColor: Colors.white,
        //     centerTitle: true,
        //     title: Text(
        //       '긴급 알림 작성',
        //       style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        //     ),
        //   ),
        //   body: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         // Container(
        //         //   height: 10,
        //         //   color: Colors.grey[50],
        //         // ),
        //         ExpansionTile(
        //             title: Padding(
        //                     padding: const EdgeInsets.only(left: 8),
        //                     child: Text(
        //                       '근무지 선택',
        //                       style: TextStyle(
        //                         fontWeight: FontWeight.normal,
        //                         color: Colors.grey.shade300,
        //                         fontSize: 18,
        //                       ),
        //                     ),
        //                   ),
        //             initiallyExpanded: true,
        //             backgroundColor: Colors.white,
        //             children: <Widget>[
        //               Divider(
        //                 height: 3,
        //                 color: OptionDivideLineColor,
        //               ),
        //               Container(
        //                 height: screenHeight * 0.05,
        //                 width: screenWidth,
        //                 child: Padding(
        //                   padding: EdgeInsets.symmetric(
        //                       horizontal: screenWidth * 0.0444444),
        //                   child: Row(
        //                     children: [
        //                       SizedBox(
        //                         width: screenWidth * 0.24444,
        //                         child: Text(
        //                           '기존 월세',
        //                           style: TextStyle(
        //                             color: hexToColor("#888888"),
        //                             fontSize: screenWidth * OptionFontSize,
        //                           ),
        //                         ),
        //                       ),
        //                       Text(
        //                         '234만원',
        //                         style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: screenWidth * OptionFontSize,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               Divider(
        //                 height: 3,
        //                 color: OptionDivideLineColor,
        //               ),
        //               Container(
        //                 height: screenHeight * 0.05,
        //                 width: screenWidth,
        //                 child: Padding(
        //                   padding: EdgeInsets.symmetric(
        //                       horizontal: screenWidth * 0.0444444),
        //                   child: Row(
        //                     children: [
        //                       SizedBox(
        //                         width: screenWidth * 0.24444,
        //                         child: Text(
        //                           '기존 보증금',
        //                           style: TextStyle(
        //                             color: hexToColor("#888888"),
        //                             fontSize: screenWidth * OptionFontSize,
        //                           ),
        //                         ),
        //                       ),
        //                       Text(
        //                         '234만원',
        //                         style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: screenWidth * OptionFontSize,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               Divider(
        //                 height: 3,
        //                 color: OptionDivideLineColor,
        //               ),
        //               Container(
        //                 height: screenHeight * 0.05,
        //                 width: screenWidth,
        //                 child: Padding(
        //                   padding: EdgeInsets.symmetric(
        //                       horizontal: screenWidth * 0.0444444),
        //                   child: Row(
        //                     children: [
        //                       SizedBox(
        //                         width: screenWidth * 0.24444,
        //                         child: Text(
        //                           '평균 공과금',
        //                           style: TextStyle(
        //                             color: hexToColor("#888888"),
        //                             fontSize: screenWidth * OptionFontSize,
        //                           ),
        //                         ),
        //                       ),
        //                       Text(
        //                         '234만원',
        //                         style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: screenWidth * OptionFontSize,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ]),
        //         // InkWell(
        //         //   child: Container(
        //         //     alignment: Alignment.centerLeft,
        //         //     height: 52,
        //         //     width: 320,
        //         //     decoration: BoxDecoration(
        //         //       borderRadius: BorderRadius.circular(12),
        //         //       border: Border.all(
        //         //         color: Colors.grey.shade300,
        //         //         width: 1.5,
        //         //       ),
        //         //     ),
        //         //     child: Padding(
        //         //       padding: const EdgeInsets.all(8.0),
        //         //       child: Row(
        //         //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         //         crossAxisAlignment: CrossAxisAlignment.center,
        //         //         children: [
        //         //           Padding(
        //         //             padding: const EdgeInsets.only(left: 8),
        //         //             child: Text(
        //         //               '근무지 선택',
        //         //               style: TextStyle(
        //         //                 fontWeight: FontWeight.normal,
        //         //                 color: Colors.grey.shade300,
        //         //                 fontSize: 18,
        //         //               ),
        //         //             ),
        //         //           ),
        //         //           Icon(
        //         //             Icons.keyboard_arrow_down,
        //         //             size: 32,
        //         //             color: Colors.grey.shade300,
        //         //           ),
        //         //         ],
        //         //       ),
        //         //     ),
        //         //   ),
        //         //   onTap: () {
        //         //        showDialog(
        //         //         barrierDismissible: false,
        //         //         context: context,
        //         //         builder: (context) {
        //         //           return AlertDialog(
        //         //             elevation: 0,
        //         //             shape: RoundedRectangleBorder(
        //         //                 borderRadius: BorderRadius.circular(5.0)),
        //         //             title: Text(
        //         //               '수정되었습니다',
        //         //               style: TextStyle(
        //         //                   fontSize: 20.0, fontWeight: FontWeight.normal),
        //         //               textAlign: TextAlign.center,
        //         //             ),
        //         //             titlePadding: EdgeInsets.all(16),
        //         //             actions: <Widget>[
        //         //               Padding(
        //         //                 padding: const EdgeInsets.all(12.0),
        //         //                 child: Column(
        //         //                   crossAxisAlignment: CrossAxisAlignment.stretch,
        //         //                   children: [
        //         //                     Container(
        //         //                       width: 320,
        //         //                       height: 60,
        //         //                       child: OutlinedButton(
        //         //                         style: OutlinedButton.styleFrom(
        //         //                             backgroundColor: Color(0xff3988FF),
        //         //                             shape: const RoundedRectangleBorder(
        //         //                                 borderRadius: BorderRadius.all(
        //         //                                     Radius.circular(10)))),
        //         //                         onPressed: () {
        //         //                           Navigator.of(context).pop();
        //         //                         },
        //         //                         child: Text(
        //         //                           '확인',
        //         //                           style: TextStyle(
        //         //                               color: Colors.white,
        //         //                               fontWeight: FontWeight.bold,
        //         //                               fontSize: 18),
        //         //                         ),
        //         //                       ),
        //         //                     ),
        //         //                   ],
        //         //                 ),
        //         //               ),
        //         //             ],
        //         //           );
        //         //         });

        //         //   },
        //         // ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         InkWell(
        //           child: Container(
        //             alignment: Alignment.centerLeft,
        //             height: 52,
        //             width: 320,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(12),
        //               border: Border.all(
        //                 color: Colors.grey.shade300,
        //                 width: 1.5,
        //               ),
        //             ),
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Padding(
        //                 padding: const EdgeInsets.only(left: 8),
        //                 child: Text(
        //                   '작업 유형 선택',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.normal,
        //                     color: Colors.grey.shade300,
        //                     fontSize: 18,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //         Spacer(),
        //         Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Container(
        //             width: double.infinity,
        //             height: 60,
        //             decoration:
        //                 BoxDecoration(borderRadius: BorderRadius.circular(80)),
        //             child: OutlinedButton(
        //               style: OutlinedButton.styleFrom(
        //                   backgroundColor: Color(0xff3988FF),
        //                   shape: const RoundedRectangleBorder(
        //                       borderRadius: BorderRadius.all(Radius.circular(10)))),
        //               onPressed: () {
        //                 showDialog(
        //                     barrierDismissible: false,
        //                     context: context,
        //                     builder: (context) {
        //                       return AlertDialog(
        //                         elevation: 0,
        //                         shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(5.0)),
        //                         title: Text(
        //                           '수정하시겠습니까?',
        //                           style: TextStyle(
        //                               fontSize: 20.0,
        //                               fontWeight: FontWeight.normal),
        //                           textAlign: TextAlign.center,
        //                         ),
        //                         titlePadding: EdgeInsets.all(16),
        //                         actions: <Widget>[
        //                           Padding(
        //                             padding: const EdgeInsets.all(12.0),
        //                             child: Column(
        //                               crossAxisAlignment:
        //                                   CrossAxisAlignment.stretch,
        //                               children: [
        //                                 Container(
        //                                   width: 320,
        //                                   height: 60,
        //                                   child: OutlinedButton(
        //                                     style: OutlinedButton.styleFrom(
        //                                         backgroundColor: Color(0xff3988FF),
        //                                         shape: const RoundedRectangleBorder(
        //                                             borderRadius: BorderRadius.all(
        //                                                 Radius.circular(10)))),
        //                                     onPressed: () {
        //                                       Navigator.of(context).pop();
        //                                       showDialog(
        //                                           barrierDismissible: false,
        //                                           context: context,
        //                                           builder: (context) {
        //                                             return AlertDialog(
        //                                               elevation: 0,
        //                                               shape: RoundedRectangleBorder(
        //                                                   borderRadius:
        //                                                       BorderRadius.circular(
        //                                                           5.0)),
        //                                               title: Text(
        //                                                 '수정되었습니다',
        //                                                 style: TextStyle(
        //                                                     fontSize: 20.0,
        //                                                     fontWeight:
        //                                                         FontWeight.normal),
        //                                                 textAlign: TextAlign.center,
        //                                               ),
        //                                               titlePadding:
        //                                                   EdgeInsets.all(16),
        //                                               actions: <Widget>[
        //                                                 Padding(
        //                                                   padding:
        //                                                       const EdgeInsets.all(
        //                                                           12.0),
        //                                                   child: Column(
        //                                                     crossAxisAlignment:
        //                                                         CrossAxisAlignment
        //                                                             .stretch,
        //                                                     children: [
        //                                                       Container(
        //                                                         width: 320,
        //                                                         height: 60,
        //                                                         child:
        //                                                             OutlinedButton(
        //                                                           style: OutlinedButton.styleFrom(
        //                                                               backgroundColor:
        //                                                                   Color(
        //                                                                       0xff3988FF),
        //                                                               shape: const RoundedRectangleBorder(
        //                                                                   borderRadius:
        //                                                                       BorderRadius.all(
        //                                                                           Radius.circular(10)))),
        //                                                           onPressed: () {
        //                                                             Navigator.of(
        //                                                                     context)
        //                                                                 .pop();
        //                                                           },
        //                                                           child: Text(
        //                                                             '확인',
        //                                                             style: TextStyle(
        //                                                                 color: Colors
        //                                                                     .white,
        //                                                                 fontWeight:
        //                                                                     FontWeight
        //                                                                         .bold,
        //                                                                 fontSize:
        //                                                                     18),
        //                                                           ),
        //                                                         ),
        //                                                       ),
        //                                                     ],
        //                                                   ),
        //                                                 ),
        //                                               ],
        //                                             );
        //                                           });
        //                                     },
        //                                     child: Text(
        //                                       '확인',
        //                                       style: TextStyle(
        //                                           color: Colors.white,
        //                                           fontWeight: FontWeight.bold,
        //                                           fontSize: 18),
        //                                     ),
        //                                   ),
        //                                 ),
        //                                 SizedBox(
        //                                   height: 16,
        //                                 ),
        //                                 Container(
        //                                   height: 60,
        //                                   width: 320,
        //                                   child: OutlinedButton(
        //                                     style: OutlinedButton.styleFrom(
        //                                         side: BorderSide(
        //                                             color: Colors.grey, width: 1),
        //                                         backgroundColor: Colors.white,
        //                                         shape: const RoundedRectangleBorder(
        //                                             borderRadius: BorderRadius.all(
        //                                                 Radius.circular(10)))),
        //                                     onPressed: () {
        //                                       Navigator.of(context).pop();
        //                                     },
        //                                     child: Text(
        //                                       '취소',
        //                                       style: TextStyle(
        //                                           color: Colors.grey,
        //                                           fontWeight: FontWeight.bold,
        //                                           fontSize: 18),
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ],
        //                       );
        //                     });
        //               },
        //               child: Text(
        //                 '수정',
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.w600,
        //                     fontSize: 16),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        );
  }
}
