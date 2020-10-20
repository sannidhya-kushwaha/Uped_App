// import 'package:flutter/material.dart';

// class UploadPage extends StatefulWidget {
//   @override
//   _UploadPageState createState() => _UploadPageState();
// }

// class _UploadPageState extends State<UploadPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.greenAccent,
//       body: Center(
//         child: Text(
//           'This is UploadPage',
//           style: TextStyle(
//               color: Colors.white, fontSize: 45, fontFamily: 'cursive'),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// class Sks extends StatefulWidget {
//   static const routeName = '/UploadPlzz';
//   @override
//   _SksState createState() => _SksState();
// }

// class _SksState extends State<Sks> {
//   File imageFile;

//   void pickImage() async {
//     //pick image
//     PickedFile pickedFile =
//         await ImagePicker().getImage(source: ImageSource.gallery);

//     imageFile = File(pickedFile.path);

//     //Or =>    Future<void>_pickedFile(ImageSource source) async{File selected = await ImagePicker.pickImage(source : ImageSource.gallery);}
//     //  setState(() {imageFile = selected;});}

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(30.0),
//                   child: RaisedButton(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(18.0),
//                       side: BorderSide(color: Colors.deepPurpleAccent),
//                     ),
//                     child: Text(
//                       "Share a post",
//                       style: new TextStyle(
//                         fontSize: 15.0,

//                         //       fontFamily: 'Futura',
//                       ),
//                     ),
//                     textColor: Colors.white,
//                     color: Color(0xFF9966cc),
//                     onPressed: () {},
//                   ),
//                 ),
//                 Row(
//                   children: <Widget>[
//                     imageFile == null
//                         ? RaisedButton(
//                             child: Image.asset(
//                               'images/img.png',
//                               height: 250,
//                               width: 250,
//                             ),
//                             onPressed: (pickImage),
//                           )
//                         : Image.file(
//                             imageFile,
//                             height: 250,
//                             width: 250,
//                           ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 RaisedButton(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(18.0),
//                     side: BorderSide(color: Colors.deepPurpleAccent),
//                   ),
//                   child: Text(
//                     "Upload",
//                     style: new TextStyle(
//                       fontSize: 15.0,

//                       //       fontFamily: 'Futura',
//                     ),
//                   ),
//                   textColor: Colors.white,
//                   color: Color(0xFF9966cc),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
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
    // await ImagePicker().getImage(source: ImageSource.camera);
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
