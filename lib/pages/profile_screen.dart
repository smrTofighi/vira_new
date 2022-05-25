import 'package:flutter/material.dart';
import 'package:vira_app/component.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.size, required this.textTheme})
      : super(key: key);
  //* Constructor -----------------

  final TextTheme textTheme;
  final Size size;
  //* Variables -------------------

  @override
  Widget build(BuildContext context) {
    //? Return --------------------
    return SingleChildScrollView(
      child: Container(
        color: SolidColors.themeColor,
        child: Column(
          children: [
            PersonalInfo(size: size, textTheme: textTheme),
            //? Header ------------

            Container(
              width: size.width,
              height: size.height / 1.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                color: SolidColors.bgProfileFooter,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width / 1.1,
                        height: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: SolidColors.bgButtonProfile,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 220,
                              child: Row(
                                children: [
                                  // Container(
                                  //   height: 38,
                                  //   width: 38,
                                  //   decoration: BoxDecoration(
                                  //       borderRadius: const BorderRadius.all(
                                  //         Radius.circular(5),
                                  //       ),
                                  //       color:
                                  //           Colors.purple[200]?.withOpacity(0.5)),
                                  //   child: ImageIcon(Assets.icons.paper,
                                  //   size: 1,),
                                  // ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    Strings.myFavoriteText,
                                    style: textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ViraDivider(size: size),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width / 1.1,
                        height: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: SolidColors.bgButtonProfile,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 220,
                              child: Row(
                                children: [
                                  // Container(
                                  //   height: 38,
                                  //   width: 38,
                                  //   decoration: BoxDecoration(
                                  //       borderRadius: const BorderRadius.all(
                                  //         Radius.circular(5),
                                  //       ),
                                  //       color:
                                  //           Colors.purple[200]?.withOpacity(0.5)),
                                  //   child: ImageIcon(Assets.icons.padcast,
                                  //   size: 10,),
                                  // ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    Strings.myFavoritePadCast,
                                    style: textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ViraDivider(size: size),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width / 1.1,
                        height: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: SolidColors.bgButtonProfile,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 220,
                              child: Row(
                                children: [
                                  // Container(
                                  //   height: 38,
                                  //   width: 38,
                                  //   decoration: BoxDecoration(
                                  //       borderRadius: const BorderRadius.all(
                                  //         Radius.circular(5),
                                  //       ),
                                  //       color:
                                  //           Colors.purple[200]?.withOpacity(0.5)),
                                  //   child: ImageIcon(Assets.icons.power),
                                  // ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    Strings.logOut,
                                    style: textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ],
                        ),
                      ),
                    )
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



//! Widgets ---------------
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
    required this.size,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Container(
        width: size.width / 1.1,
        height: 115,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              right: 16,
              top: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: Assets.images.avatar,
                    height: 80,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'سیدمحمد رضاتوفیقی',
                        style: textTheme.headline3,
                      ),
                      Text(
                        'mrtofxn@gmail.com',
                        style: textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: IconButton(
                color: Colors.black,
                icon: ImageIcon(
                  Assets.icons.settings,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
