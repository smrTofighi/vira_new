import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vira_app/component.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/constant/styles/textstyle.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/pages/login_screen.dart';
import 'package:vira_app/pages/profile_screen.dart';
import 'home_screen.dart';
//! Imports ---------------------

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _MainScreenState extends State<MainScreen> {
  var selectedIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    //! Return ------------------
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: SolidColors.appBar,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 6, 20, 0),
              child: ListView(
                children: [
                  ViraListTileDrawer(
                      title: 'سیدمحمد رضاتوفیقی',
                      icon: Assets.icons.user.path,
                      onTap: () {}),
                  const ViraDividerDrawer(),
                  ViraListTileDrawer(
                      title: 'آرشیو محتوا',
                      icon: Assets.icons.bookmark.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'معرفی به دوستان',
                      icon: Assets.icons.share.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'نسخه جدید',
                      icon: Assets.icons.update.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'درباره ما',
                      icon: Assets.icons.about.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'تماس با ما',
                      icon: Assets.icons.contactUs.path,
                      onTap: () {}),
                  ViraListTileDrawer(
                      title: 'خروج',
                      icon: Assets.icons.exit.path,
                      onTap: () {}),
                ],
              ),
            ),
          ),
        ),
        //? AppBar --------------
        appBar: AppBar(
          backgroundColor: SolidColors.appBar,
          automaticallyImplyLeading: false,

          //? Title -------------
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: (() {
                  _key.currentState!.openDrawer();
                }),
                icon: ImageIcon(
                  AssetImage(Assets.icons.menu.path),
                  size: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Image(
                  image: AssetImage(Assets.logo.vTech.path),
                  height: 50,
                ),
              ),
              const Text(
                '01/03/04',
                style: TextStyles.styleDateAppBar,
              ),
            ],
          ),
        ),
        //? Body ----------------
        body: Stack(
          children: [
            //? Screen  ---------
            Positioned.fill(
              child: IndexedStack(
                index: selectedIndexPage,
                children: [
                  HomeScreen(size: size, textTheme: textTheme),
                  Container(),
                  Container(),
                  Container(),
                  ProfileScreen(size: size, textTheme: textTheme),
                ],
              ),
            ),

            //? Bottom Nav ------
            Positioned(
              bottom: 20,
              right: 12,
              left: 12,
              child: BottomNavigation(
                size: size,
                index: selectedIndexPage,
                changeScreen: (value) {
                  setState(() {
                    selectedIndexPage = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//! Main Screen -----------------

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {Key? key,
      required this.size,
      required this.index,
      required this.changeScreen})
      : super(key: key);

  final Size size;
  final int index;
  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: SolidColors.bottomNavoff,
          boxShadow: [
            BoxShadow(
              color: ShadowColors.shadowNav,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 0
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 0
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(0),
                    icon: ImageIcon(
                      AssetImage(index == 0
                          ? Assets.icons.homeFill.path
                          : Assets.icons.home.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 1
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 1
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(1),
                    icon: ImageIcon(
                      AssetImage(
                        index == 1
                            ? Assets.icons.searchFill.path
                            : Assets.icons.search.path,
                      ),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 2
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 2
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            'برای ایجاد مقاله ابتدا وارد حساب خود شوید', style: TextStyles.styleBodyNormalText,
                          ),
                          action: SnackBarAction(
                              label: 'ورود',
                              textColor: SolidColors.themeColor,
                              onPressed: () {
                                Get.back();
                                Get.to(const LogInScreen());
                              }),
                              backgroundColor: SolidColors.appBar,
                        ),
                      );
                      // Get.to(const RegisterIntoScreen());
                    },
                    icon: ImageIcon(
                      AssetImage(index == 2
                          ? Assets.icons.addFill.path
                          : Assets.icons.add.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 3
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 3
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(3),
                    icon: ImageIcon(
                      AssetImage(index == 3
                          ? Assets.icons.bookmarkFill.path
                          : Assets.icons.bookmark.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: size.height / 13.5,
                  color: index == 4
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 4
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(4),
                    icon: ImageIcon(
                      AssetImage(index == 4
                          ? Assets.icons.userFill.path
                          : Assets.icons.user.path),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//! Bottom Navigation -----------