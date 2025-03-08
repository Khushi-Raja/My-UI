import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_uis/login/welcome_screen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.yellowAccent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const WelcomeScreen();
                          },
                        ));
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Image.asset(
                    "assets/images/pooh.png",
                    height: 200,
                  ),
                ),
                const Text(
                  "Get On Board!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Create your profile to start your journey.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          labelText: "Full Name",
                          labelStyle: TextStyle(color: Colors.grey.shade400),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey.shade400,
                          ),
                          hintText: "Khushi Raja",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Enter your full name";
                          } else {
                            // Use a regular expression that allows letters, spaces, and possibly other characters
                            if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                              return "* Enter a valid full name";
                            }
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          EmailValidator(errorText: "Enter valid email id"),
                        ]),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(color: Colors.grey.shade400),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.grey.shade400,
                          ),
                          hintText: "abc@gmail.com",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          labelText: "Phone No",
                          labelStyle: TextStyle(color: Colors.grey.shade400),
                          prefixIcon: Icon(
                            Icons.grid_3x3,
                            color: Colors.grey.shade400,
                          ),
                          hintText: "9234567810",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Enter phone number";
                          }
                          if (!RegExp(r'^[6-9]\d{9}$').hasMatch(value)) {
                            return '* Enter a valid Indian phone number';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: '* Please enter Password'),
                          MinLengthValidator(8,
                              errorText:
                                  '* Password must have atleast 8 digit'),
                          PatternValidator(r'(?=.*?[#!@$%^&*-])',
                              errorText:
                                  '* Password must have atleast one special character')
                        ]),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.grey.shade400),
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.grey.shade400,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment.topRight,
                        child: const Text(
                          "Forget Password ?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: const Text(
                            "OR",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              print('form submiitted');
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Signed up successfully'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Bootstrap.google,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: const Text(
                                "Already have an Account? ",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                          Container(
                              padding: const EdgeInsets.all(2),
                              alignment: Alignment.center,
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Icon(
                        BoxIcons.bxl_android,
                        size: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Icon(
                        BoxIcons.bxl_apple,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
