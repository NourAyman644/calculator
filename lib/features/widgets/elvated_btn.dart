import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class ElvatedBtn extends StatelessWidget {
  ElvatedBtn({
    Key? key,
    required this.text,
    this.width = 76.25,
    this.height = 77.2,
    required this.onPressed,
    this.color = AppColors.black,
    this.fontSize = 35,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(color),
            ),
        child: Text(text,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: fontSize,
                )),
      ),
    );
  }
}
