import 'package:emart/common_widgets/bg_widget.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/list.dart';
import 'package:emart/views/profile_screen_view/components/cart_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: SafeArea(
        child: Column(
          children: [
            // edit profile
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit, color: whiteColor))
                  .onTap(() {}),
            ),

            // user details section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 80, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.white.fontFamily(semibold).make(),
                        "customer@example.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: whiteColor),
                    ),
                    onPressed: () {},
                    child: logout.text.white.fontFamily(semibold).make(),
                  ),
                ],
              ),
            ),

            // cart
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cartDetails(context.screenWidth / 3.5, "00", "in your cart"),
                cartDetails(
                    context.screenWidth / 3.5, "22", "in your wishlist"),
                cartDetails(context.screenWidth / 3.5, "120", "you ordered"),
              ],
            ),

            // profile button
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                leading:
                    Image.asset(profileButtonIconsList[index], width: 22),
                title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
              ),
              separatorBuilder: (context, index) =>
                  const Divider(color: lightGrey),
              itemCount: profileButtonList.length,
            )
                .box
                .rounded
                .white.margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .shadowSm
                .make().box.color(redColor).make(),
          ],
        ),
      ),
    );
  }
}
