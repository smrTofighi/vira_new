import 'package:flutter/material.dart';
import 'package:vira_app/constant/color.dart';

class ViraDivider extends StatelessWidget {
  const ViraDivider({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.5,
      indent: size.width/16,
      endIndent: size.width/16,
      color: SolidColors.dividerColor,
    );
  }
}

class ViraSizedBox extends StatelessWidget {
  const ViraSizedBox({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}