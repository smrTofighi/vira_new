import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/styles/textfield.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/pages/login_screen.dart';
import 'package:vira_app/pages/main_screen.dart';

import '../constant/string.dart';
import '../constant/styles/textstyle.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Image.asset(
                    Assets.logo.vTech.path,
                    height: 80,
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                const Text(
                  Strings.signupFollowingText,
                  style: TextStyles.styleBodyNormalText,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width / 2.3,
                        height: 65,
                        child: ElevatedButton(
                          onPressed: (() {}),
                          child: ImageIcon(
                            AssetImage(Assets.icons.google.path),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: SolidColors.googleColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        width: size.width / 2.3,
                        height: 65,
                        child: ElevatedButton(
                          onPressed: (() {}),
                          child: ImageIcon(
                            AssetImage(Assets.icons.faceBook.path),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: SolidColors.facebookColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const TextField(
                  cursorColor: SolidColors.themeColor,
                  style: TextStyles.styleTextField,
                  decoration: TextFieldDecoration.decorationFullName,
                ),
                const SizedBox(
                  height: 28,
                ),
                const TextField(
                  cursorColor: SolidColors.themeColor,
                  style: TextStyles.styleTextField,
                  decoration: TextFieldDecoration.decorationEmail,
                ),
                const SizedBox(
                  height: 28,
                ),
                const TextField(
                  cursorColor: SolidColors.themeColor,
                  style: TextStyles.styleTextField,
                  decoration: TextFieldDecoration.decorationPassword,
                ),
                const SizedBox(
                  height: 28,
                ),
                SizedBox(
                  width: Get.width,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: (() {
                      Get.offAll(MainScreen());
                    }),
                    child: const Text(
                      'ثبت نام',
                      style: TextStyles.styleTextEleVatedButton,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'حساب کاربری داری؟',
                        style: TextStyles.styleBodyNormalText,
                      ),
                      TextButton(
                        onPressed: (() {
                          Get.off(const LogInScreen());
                        }),
                        child: const Text(
                          'ورود',
                          style: TextStyles.styleTextButton,
                        ),
                        
                        
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
