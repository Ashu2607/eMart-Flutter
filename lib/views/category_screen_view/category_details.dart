// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart/common_widgets/bg_widget.dart';
import 'package:emart/common_widgets/loading_indicator.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/controllers/product_controller.dart';
import 'package:emart/services/firestore_service.dart';
import 'package:emart/views/category_screen_view/item_details.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProductController>();

    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.white.fontFamily(bold).make()),
        body: StreamBuilder(
          stream: FirestoreService.getProducts(title),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData)
              return loadingIndicator();
            else if (snapshot.data!.docs.isEmpty)
              return Center(
                child: "No Products found".text.color(darkFontGrey).make(),
              );

            var data = snapshot.data!.docs;

            return Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        controller.subCat.length,
                        (index) => "${controller.subCat[index]}"
                            .text
                            .color(darkFontGrey)
                            .size(12)
                            .fontFamily(semibold)
                            .makeCentered()
                            .box
                            .white
                            .padding(const EdgeInsets.symmetric(horizontal: 4))
                            .margin(const EdgeInsets.all(4))
                            .roundedSM
                            .size(120, 60)
                            .make(),
                      ),
                    ),
                  ),

                  // products
                  20.heightBox,
                  Expanded(
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              data[index]['p_images'][0],
                              width: 200,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            "${data[index]['p_name']}"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "${data[index]['p_price']}"
                                .numCurrency
                                .text
                                .color(redColor)
                                .fontFamily(bold)
                                .size(16)
                                .make(),
                          ],
                        )
                            .box
                            .white
                            .roundedSM
                            .outerShadowSm
                            .margin(const EdgeInsets.all(4))
                            .padding(const EdgeInsets.all(12))
                            .make()
                            .onTap(() {
                          Get.to(() => ItemDetails(
                              title: "${data[index]['p_name']}",
                              data: data[index]));
                        });
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
