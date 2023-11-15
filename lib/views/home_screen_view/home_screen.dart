import 'package:emart/common_widgets/home_buttons.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/list.dart';
import 'package:emart/views/home_screen_view/components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGolden,
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffix: Icon(Icons.search),
                  fillColor: whiteColor,
                  filled: true,
                  hintText: searchanyThing,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // swiper brand
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: context.screenHeight * 0.2,
                      enlargeCenterPage: true,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) => Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make(),
                    ),

                    10.heightBox,

                    // deals button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        2,
                        (index) => homeButtons(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 2.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todayDeal : flashSale,
                        ),
                      ),
                    ),
                    20.heightBox,
                    // 2nd swiper
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: context.screenHeight * 0.2,
                      enlargeCenterPage: true,
                      itemCount: secondSlidersList.length,
                      itemBuilder: (context, index) => Image.asset(
                        secondSlidersList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make(),
                    ),
                    10.heightBox,
                    //category button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => homeButtons(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 3.5,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topCategories
                              : index == 1
                                  ? brand
                                  : topSeller,
                        ),
                      ),
                    ),

                    20.heightBox,

                    // featured categories
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              featuredButton(
                                  icon: featuredImagesList1[index],
                                  title: featuredTitle1[index]),
                              10.heightBox,
                              featuredButton(
                                  icon: featuredImagesList2[index],
                                  title: featuredTitle2[index]),
                            ],
                          ),
                        ).toList(),
                      ),
                    ),

                    // featured product
                    20.heightBox,
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text
                              .color(whiteColor)
                              .size(18)
                              .fontFamily(bold)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                6,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(imgP1,
                                        width: 150, fit: BoxFit.cover),
                                    10.heightBox,
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
                                    .margin(const EdgeInsets.all(4))
                                    .padding(const EdgeInsets.all(8))
                                    .make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // third swiper
                    20.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: context.screenHeight * 0.2,
                      enlargeCenterPage: true,
                      itemCount: secondSlidersList.length,
                      itemBuilder: (context, index) => Image.asset(
                        secondSlidersList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make(),
                    ),

                    // All product section
                    20.heightBox,
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 300,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP5,
                                  width: 200, height: 200, fit: BoxFit.cover),
                              const Spacer(),
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
                              .margin(const EdgeInsets.all(4))
                              .padding(const EdgeInsets.all(12))
                              .make();
                        })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
