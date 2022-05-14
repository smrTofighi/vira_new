import 'package:flutter/material.dart';
import 'package:vira_app/constant/color.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu,
                  color: Colors.black),
                ),
                
              ],
            ),
          ),
          body: Stack(
            children: [
              //SingleChildScrollView(),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 12,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        color: SolidColor.bottomNavoff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.person),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.settings),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.home,
                            color: SolidColor.bottomNavon,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
