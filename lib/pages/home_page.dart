import 'package:flutter/material.dart';
import 'package:my_uis/pages/constant_code.dart';
import 'package:my_uis/pages/emoticon_face.dart';
import 'package:my_uis/pages/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue[800],
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const Second();
                    },
                  ));
                },
                child: const Icon(
                  Icons.add_box,
                  color: Colors.white,
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              label: '',
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Greetings for
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Hi Jared!
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
                          //Notification
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
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
                          labelStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 25),

                      //how do you feel
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "How do you feel?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              EmoticonFace(emoticonFace: "🥹"),
                              SizedBox(height: 8),
                              Text("Bad", style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Column(
                            children: [
                              EmoticonFace(emoticonFace: "🥰"),
                              SizedBox(height: 8),
                              Text("Fine",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Column(
                            children: [
                              EmoticonFace(emoticonFace: "🤩"),
                              SizedBox(height: 8),
                              Text("Well",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Column(
                            children: [
                              EmoticonFace(emoticonFace: "🥳"),
                              SizedBox(height: 8),
                              Text("Excellent",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 20, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              "Exercises",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.grey.shade400,
                            )
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
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade50,
                                  ),
                                  height: 90,
                                  padding: const EdgeInsets.all(10),
                                  child: ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                          height: 50,
                                          width: 45,
                                          color: Colors.yellow,
                                          child: arrIcons[index]),
                                    ),
                                    title: Text(
                                      arrSkills[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Icon(Icons.horizontal_distribute,
                                            color: Colors.grey.shade400,
                                            size: 10),
                                        Text(
                                          "Exercises",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade400,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    trailing: Icon(Icons.more_horiz,
                                        color: Colors.grey.shade400),
                                  ),
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
      ),
    );
  }
}
