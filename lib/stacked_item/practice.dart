// import 'package:flutter/material.dart';
// import 'package:my_uis/flutter_project/constants.dart';
//
// class Practice extends StatelessWidget {
//   Practice({super.key});
//   final ScrollController _scrollController = ScrollController();
//   @override
//   Widget build(BuildContext context) {
//     _scrollController.addListener(() {
//       print(_scrollController.offset);
//     });
//     return Scaffold(
//       appBar: AppBar(leading: Icon(Icons.menu), actions: [
//         Container(
//             padding: EdgeInsets.only(right: 20), child: Icon(Icons.search)),
//         Container(
//             padding: EdgeInsets.only(right: 10), child: Icon(Icons.person))
//       ]),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 16.0, right: 56, left: 46),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   CustomText(
//                     text: "Loyality Card",
//                     fontWeight: FontWeight.w500,
//                     favColor: Colors.grey.shade400,
//                     fontSize: 18,
//                   ),
//                   CustomText(
//                       text: "Menu",
//                       favColor: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500)
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 12, right: 12),
//               height: 300,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: ClipRRect(
//                         borderRadius: BorderRadius.circular(20),
//                         child: Image.asset(
//                           arrImages[index],
//                           width: 200,
//                           fit: BoxFit.cover,
//                         )),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListView.builder(
//               controller: _scrollController,
//               shrinkWrap: true,
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 20, right: 20,),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 3,
//                               blurRadius: 7,
//                               offset: Offset(
//                                   0, 3),
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Padding(
//                         padding: EdgeInsets.all(15.0),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                   children: [
//                                     CustomText(
//                                         text: arrNames[index],
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.bold),
//                                     CustomText(
//                                         text: arrMessage[index],
//                                         fontSize: 18,
//                                         favColor: Colors.grey.shade400,
//                                         fontWeight: FontWeight.w600),
//                                     SizedBox(
//                                       height: 10,
//                                     ),
//                                     CustomText(
//                                         text: "\$ 2.99",
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.bold)
//                                   ],
//                                 ),
//                                 ClipRRect(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20)),
//                                   child: Image.asset(
//                                     arrImages[index],
//                                     height: 100,
//                                     width: 100,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.8,
//                     ),
//                   ),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget CustomText({
//   required String text,
//   Color? favColor = Colors.black,
//   double? fontSize,
//   FontWeight? fontWeight,
// }) {
//   return Text(
//     text,
//     style: TextStyle(
//       color: favColor,
//       fontSize: fontSize,
//       fontWeight: fontWeight,
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:my_uis/flutter_project/constants.dart';

class Practice extends StatelessWidget {
  Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu), actions: [
        Container(
            padding: EdgeInsets.only(right: 20), child: Icon(Icons.search)),
        Container(
            padding: EdgeInsets.only(right: 10), child: Icon(Icons.person)),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 56, left: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Loyality Card",
                    fontWeight: FontWeight.w500,
                    favColor: Colors.grey.shade400,
                    fontSize: 18,
                  ),
                  CustomText(
                      text: "Menu",
                      favColor: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          arrImages[index],
                          width: 200,
                          fit: BoxFit.cover,
                        )),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: arrNames[index],
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                    CustomText(
                                        text: arrMessage[index],
                                        fontSize: 18,
                                        favColor: Colors.grey.shade400,
                                        fontWeight: FontWeight.w600),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                        text: "\$ 2.99",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Image.asset(
                                    arrImages[index],
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

Widget CustomText({
  required String text,
  Color? favColor = Colors.black,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: favColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
