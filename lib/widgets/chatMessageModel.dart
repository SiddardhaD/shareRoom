class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

class ChatUsers {
  String? text;
  String? secondaryText;
  String? image;
  String? time;
  ChatUsers({this.text, this.secondaryText, this.image, this.time});
}
