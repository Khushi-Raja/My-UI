import 'package:flutter/material.dart';
import 'package:my_uis/login/login.dart';
import 'package:my_uis/login/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[500],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/pooh.png",
                  height: 350,
                ),
              ),
              const SizedBox(height: 100),
              const Text(
                "Build Awesome Apps",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black),
              ),
              customText(text: "Let's put your creativity on the"),
              customText(text: "development highway"),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customContainer(
                      text: 'Login',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Login();
                          },
                        ));
                      }),
                  customContainer(
                      text: 'Sign up',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Signup();
                          },
                        ));
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customContainer({void Function()? onTap, required String text}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          margin: const EdgeInsets.only(right: 10, left: 20),
          height: 60,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  customText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}