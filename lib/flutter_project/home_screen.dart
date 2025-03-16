import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:my_uis/flutter_project/constants.dart';
import 'package:my_uis/flutter_project/custom_buttom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Opacity(
                        opacity: 0.25,
                        child: ClipPath(
                          clipper: WaveClipperOne(
                            flip: true,
                          ),
                          child: Image.asset(
                            "assets/images/anime3.jpeg",
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.purple,
                                      )),
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: const Icon(
                                      Icons.search,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Colors.purple,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/anime4.jpeg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/india.png"),
                              radius: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Sandy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Designer at applemax",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              arrImages[index],
                              height: 100,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sandy Highlights",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  arrImages[index],
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 0,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.pink,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "About Sandy",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "The embroidery should not be begun\nuntil the paste is perfectly dry",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "My Groups",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  AspectRatio(
                    aspectRatio: 0.38,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            arrImages[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: CustomButtomNavigationBar(index: 2),
            ),
          ],
        ),
      ),
    );
  }
}
