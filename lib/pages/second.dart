import 'package:flutter/material.dart';
import 'package:my_uis/pages/home_page.dart';

import 'constant_code.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const HomePage();
                              },
                            ));
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        )),
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi, Jared!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "23 Jan,2021",
                              style: TextStyle(color: Colors.blue[200]),
                            )
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(12),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            )),
                        //search bar
                      ],
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 3),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          labelText: 'Search',
                          labelStyle: const TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20),
                  child: Column(
                    children: [
                      Center(
                        child: Icon(
                          Icons.horizontal_rule,
                          size: 60,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Category",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          customIcon(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customContainer(text: "Relationship", width: MediaQuery.of(context).size.width * 0.4, color: Colors.purple),
                          customContainer(text: "Career", width: MediaQuery.of(context).size.width * 0.4, color: Colors.blue),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customContainer(color: Colors.orange, width: MediaQuery.of(context).size.width * 0.4,text: "Education"),
                          customContainer(text: "Other", width: MediaQuery.of(context).size.width * 0.4, color: Colors.red),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const Text(
                            "Consultant",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          customIcon(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    height: 50,
                                    width: 45,
                                    color: Colors.yellow,
                                    child: arrIcons[index],
                                  ),
                                ),
                                title: Text(
                                  arrSkills[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                subtitle: Row(
                                  children: [
                                    Icon(
                                      Icons.horizontal_distribute,
                                      color: Colors.grey.shade400,
                                      size: 10,
                                    ),
                                    Text(
                                      " Exercises ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: customIcon(),
                              ),
                              const SizedBox(height: 20),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget customContainer({double? width, required String text, Color? color}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 90,
      width: width,
      child: Center(
          child: Text(
            text,
            style:
            const TextStyle(fontSize: 18, color: Colors.white),
          )),
    );
  }

  Widget customIcon() {
    return Icon(
      Icons.more_horiz,
      color: Colors.grey.shade400,
    );
  }
}
