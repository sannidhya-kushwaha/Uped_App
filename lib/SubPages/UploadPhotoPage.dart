import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadPhotoPage extends StatefulWidget {
  static const routeName = '/UploadPhotoPage';
  @override
  _UploadPhotoPageState createState() => _UploadPhotoPageState();
}

class _UploadPhotoPageState extends State<UploadPhotoPage> {
  File imageFile;

  void pickImage() async {
    //pick image
    PickedFile pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    await ImagePicker().getImage(source: ImageSource.camera);
    imageFile = File(pickedFile.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: imageFile == null ? Text("Select an Image") : Image.file(imageFile),
      floatingActionButton: FloatingActionButton(
        onPressed: (pickImage),
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
