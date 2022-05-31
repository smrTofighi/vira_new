import 'package:flutter/material.dart';
import 'package:vira_app/constant/string.dart';
import 'package:vira_app/gen/assets.gen.dart';

class RegisterIntoScreen extends StatelessWidget {
  const RegisterIntoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: Assets.logo.vTech,
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    Strings.welcome,
                    style: textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: Strings.welcomeText,
                      style: textTheme.bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor:
                          Colors.transparent, // the bottomsheet haves a color
                      context: context,
                      builder: ((context) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                            height: size.height / 2,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    Strings.insertYourEmail,
                                    style: textTheme.bodyText1,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(36,24,36,24),
                                    child: TextField(
                                      style: textTheme.subtitle2,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText: "viratech@email.com",
                                          hintStyle: textTheme.subtitle1,
                                          ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (() {}),
                                    child: const Text("ادامه"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                    },
                    child: const Text(
                      'بزن بریم',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
