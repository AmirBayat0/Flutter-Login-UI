// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, void_checks

import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ForgotPassword"),
        backgroundColor: Colors.deepPurpleAccent[100],
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.deepPurpleAccent,
                Color(0xff4a148c),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TweenAnimationBuilder(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/25.png'), fit: BoxFit.fill),
                    ),
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  builder: (BuildContext context, double _value, child) {
                    return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 10),
                        child: child,
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: TweenAnimationBuilder(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Yo! Forgot Your Password?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "No Worries! Enter Your email and we will send you a reset.",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuad,
                  builder: (BuildContext context, double _value, child) {
                    return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 5),
                        child: child,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TweenAnimationBuilder(
                child: Container(
                  height: 50,
                  width: 310,
                  child: TextField(
                    readOnly: true,
                    showCursor: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.3), fontSize: 15),
                      hintText: "Something@email.com",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurpleAccent, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      floatingLabelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white70, width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInSine,
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 5),
                      child: child,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              TweenAnimationBuilder(
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (contex) => AlertDialog(
                          contentPadding:
                              const EdgeInsets.only(left: 25, top: 10),
                          buttonPadding: const EdgeInsets.only(bottom: 5),
                          title: Text("Email Verification"),
                          content: Text(
                              "Please verify the email adress for something@email.com"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Verify"))
                          ],
                        ),
                      );
                    },
                    height: 45,
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      'Send Request',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 5),
                      child: child,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
