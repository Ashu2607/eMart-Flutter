// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart/common_widgets/loading_indicator.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/services/firestore_service.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title:
            "My Wishlist".text.color(darkFontGrey).fontFamily(semibold).make(),
      ),
      body: StreamBuilder(
        stream: FirestoreService.getAllMessages(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData)
            return loadingIndicator();
          else if (snapshot.data!.docs.isEmpty)
            return "No messages yet!".text.color(darkFontGrey).makeCentered();
          else
            return Container();
        },
      ),
    );
  }
}
