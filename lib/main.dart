import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.green.shade500,
          appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 80,
            backgroundColor: Colors.green.shade700,
            title: Text(
              "Mi Card",
              style: GoogleFonts.ubuntu(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          body: SizedBox(
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/avatar.jpeg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 40),
                  child: Column(
                    children: [
                      Text(
                        "Suraj Singh Negi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comicNeue(
                            fontSize: 25, color: Colors.white),
                      ),
                      Text("Fluttter Developer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white)),
                      SizedBox(height: 20),
                      Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 40,
                          width: 350,
                          child: Row(
                            children: [
                              const SizedBox(width: 20),
                              const Icon(Icons.phone, color: Colors.black),
                              const SizedBox(width: 20),
                              Text(
                                "Phone No : 7988284633",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.comicNeue(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 450,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Icon(Icons.email_rounded, color: Colors.black),
                                SizedBox(width: 20),
                                Text("Email : parasnegi36@gmail.com",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.comicNeue(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
