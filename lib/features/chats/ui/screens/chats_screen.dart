import 'package:flutter/material.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../widgets/chat_input_field.dart';
import '../widgets/chat_message_widget.dart';
import '../widgets/chatcontroller.dart';
import '../widgets/chats_app_bar.dart';
import '../widgets/selected_image_preview.dart';
import '../widgets/selected_file_preview.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({
    super.key,
    required this.username,
    required this.userImagePath,
  });

  final String username;
  final String userImagePath;

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ChatController _chatController = ChatController();

  void _sendMessage() {
    final text = _messageController.text.trim();
    _chatController.sendMessage(text);
    setState(() {});
    _messageController.clear();
  }

  void _showImagePickerBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorsManager.white,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('التقاط صورة بالكاميرا'),
                onTap: () async {
                  Navigator.pop(context);
                  await _chatController.pickImageFromCamera();
                  setState(() {});
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('اختيار من المعرض'),
                onTap: () async {
                  Navigator.pop(context);
                  await _chatController.pickImageFromGallery();
                  setState(() {});
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatsAppBar(
        username: widget.username,
        userImagePath: widget.userImagePath,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              itemCount: _chatController.messages.length,
              itemBuilder: (context, index) {
                final msg = _chatController.messages[index];
                return ChatMessageWidget(
                  isSender: msg['isSender'],
                  message: msg['message'],
                  timestamp: msg['timestamp'],
                  isSeen: msg['isSeen'],
                  isImage: msg['isImage'] ?? false,
                  isFile: msg['isFile'] ?? false,
                );
              },
            ),
          ),
          if (_chatController.selectedImage != null)
            SelectedImagePreview(imagePath: _chatController.selectedImage!.path),
          if (_chatController.selectedFile != null)
            SelectedFilePreview(file: _chatController.selectedFile!),
          ChatInputField(
            messageController: _messageController,
            onSendMessage: _sendMessage,
            onAttachmentPressed: _chatController.pickFile,
            onCameraPressed: _showImagePickerBottomSheet,
          ),
        ],
      ),
    );
  }
}
