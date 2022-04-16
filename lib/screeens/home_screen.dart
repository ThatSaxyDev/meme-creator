import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memes/screeens/meme_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text('Create memes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              XFile? file = await ImagePicker().pickImage(
                source: ImageSource.gallery,
              );
              if (file != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MemeScreen(selectedImage: file.path),
                  ),
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                color: Colors.grey,
                child: const Text(
                  'Select an image from your gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
