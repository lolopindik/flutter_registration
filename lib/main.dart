import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
          leading: const Icon(Icons.account_box),
          iconTheme: const IconThemeData(color: Colors.white), // Set back button color to white
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.blue],
              ),
            ),
          ),
          title: const Text('Registration', style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
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
                            hintText: "Email:",
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
                            hintText: "Password:",
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                          maxLength: 16,
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
                            hintText: "Confirm password:",
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                          maxLength: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to another screen here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AnotherScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Transparent background
                        elevation: 0, // No shadow
                        padding: const EdgeInsets.all(0), // No padding
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.green, Colors.blue],
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
