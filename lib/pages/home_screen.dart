import 'package:flutter/material.dart';
import 'package:vira_app/component.dart';
import 'package:vira_app/constant/string.dart';
import '../constant/color.dart';
import '../models/data_models.dart';
//! Imports  -----------------------

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.size,
    required this.textTheme,
  }) : super(key: key);
  //* Constructor ---------------

  final TextTheme textTheme;
  final Size size;
  //* Variables -----------------
  @override
  Widget build(BuildContext context) {
    //? Return ------------------
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ViraSizedBox(height: 6.0),
            //? ----------------------------

            MostNewsText(textTheme: textTheme),

            const ViraSizedBox(height: 6.0),
            //? ----------------------------
            MoreNewsPostList(size: size, textTheme: textTheme),

            const ViraSizedBox(height: 6),
            //? ----------------------------
            const HashTagList(),

            const ViraSizedBox(height: 8.0),
            //? ----------------------------
            NewText(textTheme: textTheme),

            NewPostList(size: size, textTheme: textTheme),

            NewPadCast(textTheme: textTheme),

            NewPadCastList(size: size),

            const ViraSizedBox(height: 70.0),
            //? ----------------------------
          ],
        ),
      ),
    );
  }
}

//! WIdgets -----------------

class NewPadCast extends StatelessWidget {
  const NewPadCast({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          Strings.newPadCast,
          style: textTheme.headline2,
        ),
      ),
    );
  }
}

class HashTagList extends StatelessWidget {
  const HashTagList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  border: Border.all(color: Colors.black),
                  color: SolidColors.hashTagColor),
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 12),
                child: Row(
                  children: [
                    const Icon(Icons.tag),
                    Text(
                      tagList[index].title!,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        physics: const BouncingScrollPhysics(),
        itemCount: tagList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class NewText extends StatelessWidget {
  const NewText({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, bottom: 6.0),
      child: Align(
        child: Text(Strings.newNews, style: textTheme.headline2),
        alignment: Alignment.centerRight,
      ),
    );
  }
}

class MostNewsText extends StatelessWidget {
  const MostNewsText({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.mostNews,
      style: textTheme.headline1,
    );
  }
}

class MoreNewsPostList extends StatelessWidget {
  const MoreNewsPostList(
      {Key? key, required this.size, required this.textTheme})
      : super(key: key);
  final TextTheme textTheme;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2.2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: size.height / 2.2,
                  width: size.width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                          newsPost[index].imageUrl.toString(),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Container(
                    width: size.width / 1.6,
                    height: size.height / 5.5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 8, left: 16, top: 8),
                          child: Text(
                            newsPost[index].title.toString(),
                            style: textTheme.headline3,
                            maxLines: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(newsPost[index].writer.toString(),
                                  style: textTheme.bodyText2),
                              Row(
                                children: [
                                  Text(newsPost[index].views.toString(),
                                      style: textTheme.bodyText1),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Icon(
                                    Icons.remove_red_eye_rounded,
                                    size: 22,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: newsPost.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class NewPostList extends StatelessWidget {
  const NewPostList({Key? key, required this.size, required this.textTheme})
      : super(key: key);

  final Size size;
  final TextTheme textTheme;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.0,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(
                                  newsPost[index].imageUrl.toString(),
                                ),
                                fit: BoxFit.cover),
                          ),
                          foregroundDecoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            gradient: LinearGradient(
                              colors: GradiantColors.blogPost,
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                newsPost[index].writer.toString(),
                                style: textTheme.subtitle1,
                              ),
                              Text(
                                newsPost[index].date.toString(),
                                style: textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 2.4,
                  child: Text(
                    newsPost[index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: newsPost.length,
      ),
    );
  }
}

class NewPadCastList extends StatelessWidget {
  const NewPadCastList({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                              padCastList[index].imageUrl!,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 2.4,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      padCastList[index].title.toString(),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: padCastList.length,
      ),
    );
  }
}
