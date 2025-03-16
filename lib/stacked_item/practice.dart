import 'package:flutter/material.dart';
import 'package:my_uis/flutter_project/constants.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.menu), actions: [
        Container(
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.search)),
        Container(
            padding: const EdgeInsets.only(right: 10),
            child: const Icon(Icons.person)),
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
                  customText(
                    text: "Loyalty Card",
                    fontWeight: FontWeight.w500,
                    favColor: Colors.grey.shade400,
                    fontSize: 18,
                  ),
                  customText(
                      text: "Menu",
                      favColor: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12),
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
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
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(128, 128, 128, 0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                      text: arrNames[index],
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  customText(
                                      text: arrMessage[index],
                                      fontSize: 18,
                                      favColor: Colors.grey.shade400,
                                      fontWeight: FontWeight.w600),
                                  const SizedBox(height: 10),
                                  customText(
                                      text: "\$ 2.99",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)
                                ],
                              ),
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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

Widget customText({
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
