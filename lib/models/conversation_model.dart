import 'package:street_eats_vendor/helpers/styles/app_assets.dart';

class ConversationModel {
  String senderImage, name, message, time;
  bool myMessage;
  ConversationModel({
    //
    this.senderImage = "",
    this.name = "",
    required this.message,
    required this.time,
    this.myMessage = false,
  });
}

List<ConversationModel> conversationList = [
  ConversationModel(
    senderImage: AppAssets.dummyPorfileImg,
    name: "William Roy",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor exercitation.",
    time: "16 min. ago",
  ),
  ConversationModel(
    senderImage: AppAssets.dummyPorfileImg,
    name: "William Roy",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor exercitation.",
    time: "16 min. ago",
  ),
];
