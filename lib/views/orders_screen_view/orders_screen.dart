// // ignore_for_file: curly_braces_in_flow_control_structures
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:emart/common_widgets/loading_indicator.dart';
// import 'package:emart/consts/consts.dart';
// import 'package:emart/services/firestore_service.dart';

// class OrdersScreen extends StatelessWidget {
//   const OrdersScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: whiteColor,
//       appBar: AppBar(
//         title: "My Order".text.color(darkFontGrey).fontFamily(semibold).make(),
//       ),
//       body: StreamBuilder(
//         stream: FirestoreService.getAllOrders(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (!snapshot.hasData)
//             return loadingIndicator();
//           else if (snapshot.data!.docs.isEmpty)
//             return "No orders yet!".text.color(darkFontGrey).makeCentered();

//           var data = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: data.length,
//             itemBuilder: (BuildContext context, int index) => ListTile(
//               title: data[index]['order_code']
//                   .toString()
//                   .text
//                   .color(redColor)
//                   .fontFamily(semibold)
//                   .make(),
//               subtitle: data[index]['total_amount']
//                   .toString()
//                   .numCurrency
//                   .text
//                   .fontFamily(bold)
//                   .make(),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
