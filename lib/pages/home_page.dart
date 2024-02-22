import 'package:flutter/material.dart';
import 'package:registration/components/home_style.dart';
import 'package:registration/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Registration", style: TextStyle(color: Colors.white)),
        leading: const Icon(Icons.account_box),
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: const GradientContainer(
          gradientColors: [Colors.green, Colors.blue],
          children: [],
        ),
        centerTitle: true,
        toolbarHeight: 56.0,
      ),
      body: GradientContainer(
        gradientColors: const [Colors.blueAccent, Colors.blueGrey],
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const CustomTextField(
                  hintText: 'Email:',
                  maxLength: 100,
                ),
                const CustomTextField(
                  hintText: 'Password:',
                  maxLength: 16,
                ),
                GradientButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnotherScreen()),
                    );
                  },
                  text: 'Choose your phone',
                  gradientColors: const [Colors.green, Colors.blue],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
