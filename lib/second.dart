import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.blue],
            ),
          ),
        ),
        title: const Text('Info', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueAccent, Colors.blueGrey],
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, top: 80, bottom: 20),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.grey],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      child: const Align(
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Passport Series:",
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                          maxLength: 10,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.grey],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      child: const Align(
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Insurance:",
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                          maxLength: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.grey],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      child: const Align(
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Address:",
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                          maxLength: 100,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.grey],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      child: const Align(
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Military bidet number:s",
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                          maxLength: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
