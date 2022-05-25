import 'package:flutter/material.dart';
import 'package:vira_app/constant/color.dart';
import 'package:vira_app/gen/assets.gen.dart';
import 'package:vira_app/pages/profile_screen.dart';
import 'home_screen.dart';
//! Imports ---------------------

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selectedIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    //! Return ------------------
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
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
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: ImageIcon(
                    Assets.icons.menu,
                    size: 20,
                  )),
              Image(
                image: Assets.logo.vTech,
                height: 50,
              ),
              Text(
                '01/03/04',
                style: textTheme.bodyText1,
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
                  color: index == 4
                      ? SolidColors.bottomNavon
                      : SolidColors.bottomNavoff,
                  child: IconButton(
                    color: index == 4
                        ? SolidColors.iconWhite
                        : SolidColors.iconBlack,
                    onPressed: () => changeScreen(4),
                    icon: ImageIcon(
                      index == 4 ? Assets.icons.userFill : Assets.icons.user,
                      size: index == 4 ? 24 : 20,
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
                      index == 3
                          ? Assets.icons.bookmarkFill
                          : Assets.icons.bookmark,
                      size: index == 3 ? 24 : 20,
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
                    onPressed: () => changeScreen(2),
                    icon: ImageIcon(
                      index == 2 ? Assets.icons.addFill : Assets.icons.add,
                      size: index == 2 ? 24 : 20,
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
                      index == 1
                          ? Assets.icons.searchFill
                          : Assets.icons.search,
                      size: index == 1 ? 24 : 20,
                    ),
                  ),
                ),
              ),
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
                      index == 0 ? Assets.icons.homeFill : Assets.icons.home,
                      size: index == 0 ? 24 : 20,
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