import 'package:flutter/material.dart';
import 'package:my_uis/flutter_project/custom_buttom_navigationbar.dart';
import 'package:my_uis/flutter_project/constants.dart';

class ChatScreenFinal extends StatelessWidget {
  const ChatScreenFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                      ),
                      const SizedBox(width: 8.0),
                      // Add spacing between icon and text
                      const Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Stack(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.purple,
                            size: 30,
                          ),
                          Positioned(
                            top: 3,
                            bottom: 0,
                            right: 0,
                            left: 12,
                            child: Text(
                              'Z',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 25.0),
                      const Icon(
                        Icons.search,
                        weight: 20,
                        size: 30,
                      ),
                      const SizedBox(width: 25.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/boy.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  arrImages[index],
                                  fit: BoxFit.cover,
                                  height: 60,
                                  width: 50,
                                ),
                              ),
                              title: Text(
                                arrNames[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.grey.shade600),
                              ),
                              subtitle: Text(
                                arrMessage[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Text(
                                date[index],
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            Divider(
                              height: 2,
                              color: Colors.grey.shade300,
                            )
                          ],
                        );
                      },
                      itemCount: 10,
                      itemExtent: 90,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: CustomButtomNavigationBar(
                index: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}