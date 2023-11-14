import 'package:emart/common_widgets/home_buttons.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/list.dart';

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
                    10.heightBox,
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

                    10.heightBox,

                    // featured categories
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
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
