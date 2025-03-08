import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_uis/flutter_project/constants.dart';
import 'custom_buttom_navigationbar.dart';

class ProfileScreenFinal extends StatelessWidget {
  const ProfileScreenFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 230,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 1,
                      ),
                      items: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/anime1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/anime2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/anime3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/anime4.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/anime5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/anime6.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Positioned(
                      bottom: 25,
                      left: 30,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/india.png"),
                        radius: 35,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.all(8),
                    color: Colors.white,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          elevation: 10,
                          margin: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(arrImages[index]),
                                ),
                                title: Text(
                                  arrNames[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.grey.shade600),
                                ),
                                trailing: const Icon(
                                  Icons.camera_alt_outlined,
                                ),
                              ),
                              Divider(
                                height: 20,
                                color: Colors.grey.shade400,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 16.0),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  arrMessage[index],
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  description[index],
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                              Divider(
                                height: 20,
                                color: Colors.grey.shade400,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          arrImages[index],
                                          height: 40,
                                          width: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        arrNames[index],
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey.shade500),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(right: 40.0),
                                      child: Stack(

                                        fit: StackFit.loose,
                                        children: [
                                          Positioned(
                                            left: 18,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 18.0),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.orange,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 18.0),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/images/india.png"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: 10,
                      // itemExtent: 270,
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
                  index: 0,
                ))
          ],
        ),
        // bottomNavigationBar: CustomButtomNavigationBar(),
      ),
    );
  }
}
