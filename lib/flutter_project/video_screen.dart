import 'package:flutter/material.dart';
import 'package:my_uis/flutter_project/constants.dart';
import 'package:my_uis/flutter_project/custom_buttom_navigationbar.dart';
import 'package:video_player/video_player.dart';

class VideoScreenFinal extends StatefulWidget {
  const VideoScreenFinal({super.key});

  @override
  State<VideoScreenFinal> createState() => _VideoScreenFinalState();
}

class _VideoScreenFinalState extends State<VideoScreenFinal> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse("assets/videos/trailer.mp4"))
          ..initialize().then((_) {
            setState(() {});
          });
  }

  List<bool> isFavoriteList = List.generate(10, (index) => false);

  void toggleFavorite(int index) {
    setState(() {
      isFavoriteList[index] = !isFavoriteList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : Container(),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: FloatingActionButton(
                          backgroundColor: Colors.red,
                          onPressed: () {
                            setState(() {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            });
                          },
                          child: Icon(_controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, right: 30),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.purple,
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 13),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.purple,
                                  child: Image.asset(
                                    "assets/images/india.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.black,
                          value: 0.7,
                          valueColor: AlwaysStoppedAnimation(Colors.red),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/images/animegirl1.jpg"),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Sandy Walkman",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "My Epic\nFortnite Win!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "The embroidery should not be begun\nuntil the paste is perfectly dry, & the\npattern adheres firmly to the...",
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                      const Text(
                        "36",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 10),
                        child: const Icon(
                          Icons.messenger,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const Text(
                        "2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 15),
                          child: const Text(
                            "4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          "hours ago",
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.grey.shade200,
                        child: Column(
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  arrImages[index],
                                  height: 200,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                arrNames[index],
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 20),
                              ),
                              subtitle: Text(
                                arrMessage[index],
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(
                                isFavoriteList[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    isFavoriteList[index] ? Colors.red : null,
                              ),
                              onTap: () {
                                toggleFavorite(index);
                              },
                            ),
                            Divider(
                              height: 2,
                              color: Colors.grey.shade300,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: CustomButtomNavigationBar(index: 3),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}