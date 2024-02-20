import 'package:flutter/material.dart';
import 'package:registration/components/phones_list.dart';
import 'package:registration/types/arrays.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> countNames = CountNames.getNames();
    List<String> photos = Photos.getUrls();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Phones'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: countNames.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomListItem(
            photoUrl: photos[index],
            title: countNames[index],
          );
        },
      ),
    );
  }
}
