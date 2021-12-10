// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, dead_code

import 'package:flutter/material.dart';
import 'package:login_ui_p1/screen/forgot_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

//////////////////////////////////
//** Instagram : @CodeWithFlexz
/////////////////////////////////
class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  bool playAreas = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 250,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 10),
                    child: TweenAnimationBuilder(
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            fontFamily: "Raleway"),
                      ),
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(milliseconds: 500),
                      builder: (BuildContext context, double _value, child) {
                        return Opacity(
                          opacity: _value,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: _value * 10),
                            child: child,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 2,
                child: playAreas == false
                    ? TweenAnimationBuilder(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 50,
                                color: Colors.black.withOpacity(0.01),
                              ),
                            ],
                          ),
                          // *************************************************************************
                          // ******************************Login*************************************
                          // *************************************************************************
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 20),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 310,
                                    child: TextField(
                                      readOnly: true,
                                      showCursor: true,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        hintText: "Username or E-mail",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        prefixIcon: Icon(
                                          Icons.perm_identity_sharp,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade200,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        floatingLabelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurpleAccent,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 310,
                                child: TextField(
                                  readOnly: true,
                                  showCursor: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    hintText: "Password",
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                    prefixIcon: Icon(
                                      Icons.vpn_key_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    floatingLabelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurpleAccent,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: value,
                                      onChanged: (value) {
                                        setState(() {
                                          this.value = value!;
                                        });
                                      },
                                      activeColor: Colors.deepPurple[900],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    Text(
                                      "Remember Me",
                                      style: TextStyle(
                                          color: Colors.deepPurple[900],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Expanded(child: Container()),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      (ForgotPassword())),
                                            );
                                          },
                                          child: Text(
                                            "ForgotPassword?",
                                            style: TextStyle(
                                                color: Colors.deepPurple[900],
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: MaterialButton(
                                  onPressed: () {},
                                  height: 45,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 120),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.deepPurpleAccent,
                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 270,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == false) {
                                        playAreas = true;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "Create account",
                                    style: TextStyle(
                                        color: Colors.deepPurple[900],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 600),
                        builder: (BuildContext context, double _value, child) {
                          return Opacity(
                            opacity: _value,
                            child: child,
                          );
                        },
                      )

                    // *************************************************************************
                    // ******************************Signup*************************************
                    // *************************************************************************
                    : TweenAnimationBuilder(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 50,
                                color: Colors.black.withOpacity(0.01),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 20),
                                    child: Text(
                                      "Signup",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 310,
                                    child: TextField(
                                      readOnly: true,
                                      showCursor: true,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        hintText: "Username or E-mail",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        prefixIcon: Icon(
                                          Icons.perm_identity_sharp,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade200,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        floatingLabelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurpleAccent,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 310,
                                child: TextField(
                                  readOnly: true,
                                  showCursor: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    hintText: "12345",
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                    prefixIcon: Icon(
                                      Icons.vpn_key_outlined,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    floatingLabelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurpleAccent,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 310,
                                child: TextField(
                                  readOnly: true,
                                  showCursor: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: "Re-Enter Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    hintText: "12345",
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                    prefixIcon: Icon(
                                      Icons.refresh,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    floatingLabelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurpleAccent,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == true) {
                                        playAreas = false;
                                      }
                                    });
                                  },
                                  height: 45,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 120),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.deepPurpleAccent,
                                  child: Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 270,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == true) {
                                        playAreas = false;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "Back to Login",
                                    style: TextStyle(
                                        color: Colors.deepPurple[900],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeInQuart,
                        builder: (BuildContext context, double _value, child) {
                          return Opacity(
                            opacity: _value,
                            child: child,
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
