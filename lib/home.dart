import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
        ),
      ),
      body: Expanded(
        child: Container(
          color: Colors.lightGreen,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset("assets/images/logo.png")],
                  ),
                  Row(
                    children: [Image.asset("assets/images/landing.png")],
                  ),
                  const Column(
                    children: [
                      Text(
                        "Selamat Datang di Aplikasi AKSINAU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white),
                      ),
                      Text(
                        "AKSINAU adalah aplikasi informasi akademik dan pembelajaran untuk mahasiswa UNJANI",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  FilledButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.orangeAccent[100]),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(12))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Masuk",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "->[ ]",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      )),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Helpdesk AKSINAU ",
                          style: TextStyle(color: Colors.white)),
                      Text(" (0813-2499-5525)",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
