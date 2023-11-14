import 'package:emart/common_widgets/app_logo_widget.dart';
import 'package:emart/common_widgets/bg_widget.dart';
import 'package:emart/common_widgets/custom_button.dart';
import 'package:emart/common_widgets/custom_text_field.dart';
import 'package:emart/consts/consts.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Join $appname".text.fontFamily(bold).white.size(18).make(),
              20.heightBox,
              Column(
                children: [
                  customTextField(title: name, hint: nameHint),
                  customTextField(title: email, hint: emailHint),
                  customTextField(title: password, hint: passwordHint),
                  customTextField(title: retypePass, hint: passwordHint),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        checkColor: redColor,
                        onChanged: (newValue) {},
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: agree,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termsAndCondition,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: ' & ',
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                    fontFamily: bold, color: redColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  customButton(
                    color: redColor,
                    title: signup,
                    textColor: whiteColor,
                    onPressed: () {},
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          ),
                        ),
                      ],
                    ),
                  ).onTap(() {
                    Get.back();
                  }),
                ],
              )
                  .box
                  .white
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .rounded
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
