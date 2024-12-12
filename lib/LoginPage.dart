import 'package:eshopee/variables.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //backgroundColor: const Color.fromARGB(255, 192, 196, 218),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                appimg,
                fit: BoxFit.fill,
                height: height * 0.40,
                width: width * 5,
              ),
              Container(
                height: height * 0.40,
                width: width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                      Color.fromARGB(255, 219, 208, 101)
                    ])),
              )
            ],
          ),
          // const Column(
          //   children: [
          //     Center(
          //       child: Text(
          //         companyname,
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 23,
          //             color: Color.fromARGB(255, 1, 11, 29),
          //             fontStyle: FontStyle.italic),
          //         //backgroundColor: Color.fromARGB(255, 202, 218, 66),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 227, 248, 109),
                  Colors.white,
                ])),
                child: const Text(
                  "Login Screen",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: "Email Address"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "Enter your password"),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text("Forgot Password?"))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: height * 0.05,
                width: width - 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 238,
                        100), // Set your desired background color here
                    borderRadius: BorderRadius.circular(
                        8), // Optional: add rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login to account",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight
                                .bold), // Set text color for better contrast
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Create a new account"),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create",
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
