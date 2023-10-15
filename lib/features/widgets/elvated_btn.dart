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
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(color),
            ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
