import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(60, 60),
                )),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    Icons.person,
                    size: 50,
                  )),
            )),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sign in to continue.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
              inputForm("Email"),
              SizedBox(
                height: 20,
              ),
              inputForm("Password"),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User? "),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget inputForm(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.5, color: Colors.grey),
          ),
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none),
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}
