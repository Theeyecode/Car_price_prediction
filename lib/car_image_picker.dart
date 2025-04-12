import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CarImagePicker extends StatefulWidget {
  @override
  _CarImagePickerState createState() => _CarImagePickerState();
}

class _CarImagePickerState extends State<CarImagePicker> {
  File? _frontImage;
  File? _backImage;
  File? _sideImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source, String imageType) async {
    final pickedFile = await _picker.pickImage(source: source);
    
    if (pickedFile != null) {
      setState(() {
        if (imageType == "front") {
          _frontImage = File(pickedFile.path);
        } else if (imageType == "back") {
          _backImage = File(pickedFile.path);
        } else if (imageType == "side") {
          _sideImage = File(pickedFile.path);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Upload Car Images",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildImagePicker("Front", _frontImage, "front"),
            _buildImagePicker("Back", _backImage, "back"),
            _buildImagePicker("Side", _sideImage, "side"),
          ],
        ),
      ],
    );
  }

  Widget _buildImagePicker(String label, File? imageFile, String imageType) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _pickImage(ImageSource.gallery, imageType),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[300],
            backgroundImage: imageFile != null ? FileImage(imageFile) : null,
            child: imageFile == null
                ? Icon(Icons.camera_alt, size: 30, color: Colors.grey[700])
                : null,
          ),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
