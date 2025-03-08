import 'package:flutter/material.dart';
import 'package:my_uis/flutter_project/chat_screen.dart';
import 'package:my_uis/flutter_project/home_screen.dart';
import 'package:my_uis/flutter_project/profile_screen.dart';
import 'package:my_uis/flutter_project/video_screen.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  // bool homeFlag = true,
  //     graphFlag = false;
  List<bool> flag = [false, false, false, false, false];

  CustomButtomNavigationBar({int index = 0}) {
    flag[index] = true;
  }

  @override
  State<CustomButtomNavigationBar> createState() =>
      _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.purple.shade500.withOpacity(0.8),
          borderRadius: BorderRadius.circular(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const ProfileScreenFinal();
                },
              ));
            },
            child: Container(
              decoration: widget.flag[0]
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [Colors.purpleAccent, Colors.yellowAccent]))
                  : null,
              height: 50,
              width: 50,
              child: const Icon(
                Icons.person_add_alt_sharp,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const ChatScreenFinal();
                },
              ));
            },
            child: Container(
              decoration: widget.flag[1]
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [Colors.purpleAccent, Colors.yellowAccent]))
                  : null,
              height: 50,
              width: 50,
              child: const Icon(
                Icons.messenger,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const HomeScreen();
                },
              ));
            },
            child: Container(
              decoration: widget.flag[2]
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [Colors.purpleAccent, Colors.yellowAccent]))
                  : null,
              height: 50,
              width: 50,
              child: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const VideoScreenFinal();
                },
              ));
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: widget.flag[3]
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [Colors.purpleAccent, Colors.yellowAccent]))
                  : null,
              child: const Icon(
                Icons.insights,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          const Stack(
            children: [
              Icon(
                Icons.account_circle_rounded,
                size: 35,
                color: Colors.white,
              ),
              Positioned(
                right: 0,
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 8,
                    ),
                    Positioned(
                      bottom: 0.8,
                      right: 3,
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
