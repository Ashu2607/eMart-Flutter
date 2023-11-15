import 'package:emart/common_widgets/bg_widget.dart';
import 'package:emart/consts/consts.dart';
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
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.white.fontFamily(bold).make()),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => 'Baby Clothing'
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
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        "Laptop 8GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
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
                      Get.to(() => const ItemDetails(title: "Dumy Title"));
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
