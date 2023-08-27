
// import 'dart:html';

// import 'package:flutter/material.dart';

// class ImageFromGalleryEx extends StatefulWidget {
//   // final type;
//   // ImageFromGalleryEx(this.type);

//   // @override
//   // ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
// }

// class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
//   var _image;
//   var imagePicker;
//   var type;

//   ImageFromGalleryExState(this.type);




//     File? _image;

//   // This is the image picker
//   final _picker = ImagePicker();
//   // Implementing the image picker
//   Future<void> _openImagePicker() async {
//     final XFile? pickedImage =
//         await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() {
//         _image = File(pickedImage.path);
//       });
//     }
//   }


//   @override
//   void initState() {
//     super.initState();
//     imagePicker = new ImagePicker();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(type == ImageSourceType.camera
//               ? "Image from Camera"
//               : "Image from Gallery")),
//       body: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 52,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var source = type == ImageSourceType.camera
//                     ? ImageSource.camera
//                     : ImageSource.gallery;
//                 XFile image = await imagePicker.pickImage(
//                     source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
//                 setState(() {
//                   _image = File(image.path);
//                 });
//               },
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                     color: Colors.red[200]),
//                 child: _image != null
//                     ? Image.file(
//                           _image,
//                           width: 200.0,
//                           height: 200.0,
//                           fit: BoxFit.fitHeight,
//                         )
//                     : Container(
//                         decoration: BoxDecoration(
//                             color: Colors.red[200]),
//                         width: 200,
//                         height: 200,
//                         child: Icon(
//                           Icons.camera_alt,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
