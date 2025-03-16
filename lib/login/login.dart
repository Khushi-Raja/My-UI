import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_uis/login/welcome_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Image.asset(
                    "assets/images/pooh.png",
                    height: 200,
                  ),
                ),
                const Text(
                  "Welcome Back,",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Make it work, make it right, make it fast",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 50),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      customTextFormField(
                        labelText: "E-mail",
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                          EmailValidator(errorText: "Enter valid email id"),
                        ]),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      customTextFormField(
                        obscureText: true,
                        labelText: "Password",
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
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.grey.shade400,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      customContainer(
                          data: "Forget Password ?",
                          color: Colors.blue,
                          padding: const EdgeInsets.all(15),
                          alignment: Alignment.topRight,
                          fontSize: 15),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              // Replace with your custom color value
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Logged in successfully'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      customContainer(
                          data: 'OR', padding: const EdgeInsets.all(20)),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Bootstrap.google,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customContainer(data: "Don't have an Account? "),
                          customContainer(
                              data: "Signup",
                              color: Colors.blue,
                              padding: const EdgeInsets.all(2)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customIcon(icon: BoxIcons.bxl_android),
                    const SizedBox(width: 40),
                    customIcon(icon: BoxIcons.bxl_apple),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customIcon({IconData? icon}) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }

  Widget customTextFormField(
      {String? Function(String?)? validator,
      required String labelText,
      Widget? prefixIcon,
      Widget? suffixIcon,
      bool obscureText = false}) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
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
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }

  Widget customContainer(
      {required String data,
      Color? color,
      EdgeInsetsGeometry? padding,
      AlignmentGeometry? alignment,
      double? fontSize}) {
    return Container(
      padding: padding,
      alignment: alignment ?? Alignment.center,
      child: Text(
        data,
        style: TextStyle(
            fontWeight: FontWeight.w500, color: color, fontSize: fontSize),
      ),
    );
  }
}
