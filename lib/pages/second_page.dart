import 'package:flutter/material.dart';
import 'package:registration/components/phones_list.dart';
import 'package:registration/types/phones.dart';
// Import the array_operations.dart file

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> countNames = ArrayOperations.getCountNames();
    List<String> photos = ArrayOperations.getPhotos();

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