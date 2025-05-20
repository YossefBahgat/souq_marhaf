import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class ChatController {
  List<Map<String, dynamic>> messages = [];
  XFile? selectedImage;
  PlatformFile? selectedFile;

  void sendMessage(String text) {
    if (selectedImage != null) {
      messages.add({
        "message": selectedImage!.path,
        "isSender": true,
        "timestamp": DateTime.now(),
        "isSeen": true,
        "isImage": true,
      });
      selectedImage = null;
    } else if (selectedFile != null) {
      messages.add({
        "message": selectedFile!.path!,
        "isSender": true,
        "timestamp": DateTime.now(),
        "isSeen": true,
        "isFile": true,
      });
      selectedFile = null;
    } else if (text.isNotEmpty) {
      messages.add({
        "message": text,
        "isSender": true,
        "timestamp": DateTime.now(),
        "isSeen": true,
      });
    }
  }

  Future<void> pickImageFromCamera() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.camera);
    if (picked != null) {
      selectedImage = picked;
    }
  }

  Future<void> pickImageFromGallery() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      selectedImage = picked;
    }
  }

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.single.path != null) {
      selectedFile = result.files.single;
    }
  }
}
