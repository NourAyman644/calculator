import 'package:calculator/core/utils/app_colors.dart';
import 'package:calculator/core/utils/app_strings.dart';
import 'package:calculator/features/widgets/elvated_btn.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 335,
            ),
            Row(
              children: [
                Column(
                  children: [
                    ElvatedBtn(
                      text: AppStrings.clear,
                      onPressed: () {},
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.seven,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.four,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.one,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.one,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  children: [
                    ElvatedBtn(
                      text: AppStrings.mod,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.eight,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.five,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.two,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.zero,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  children: [
                    ElvatedBtn(
                      text: AppStrings.divide,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.nine,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.six,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.three,
                      onPressed: () {},
                      color: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.dot,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  children: [
                    ElvatedBtn(
                      text: AppStrings.multiply,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.minus,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.plus,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElvatedBtn(
                      text: AppStrings.equal,
                      onPressed: () {},
                      color: AppColors.primaryColor,
                      height: 172,
                    ),
                  ],
                ),
              ],
            )
            // Row(
            //   children: [
            //     ElvatedBtn(
            //       text: AppStrings.clear,
            //       onPressed: () {},
            //       color: AppColors.primaryColor,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.mod,
            //       onPressed: () {},
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(text: AppStrings.divide, onPressed: () {}),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(text: AppStrings.multiply, onPressed: () {}),
            //   ],
            // ),
            // const SizedBox(
            //   height: 13,
            // ),
            // Row(
            //   children: [
            //     ElvatedBtn(
            //       text: AppStrings.seven,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.eight,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.nine,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(text: AppStrings.minus, onPressed: () {}),
            //   ],
            // ),
            // const SizedBox(
            //   height: 13,
            // ),
            // Row(
            //   children: [
            //     ElvatedBtn(
            //       text: AppStrings.four,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.five,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.six,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(text: AppStrings.plus, onPressed: () {}),
            //   ],
            // ),
            // const SizedBox(
            //   height: 13,
            // ),
            // Row(
            //   children: [
            //     ElvatedBtn(
            //       text: AppStrings.one,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.two,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.three,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //
            //   ],
            // ),
            // const SizedBox(
            //   height: 13,
            // ),
            // Row(
            //   children: [
            //     ElvatedBtn(
            //       text: AppStrings.one,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.zero,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     ElvatedBtn(
            //       text: AppStrings.dot,
            //       onPressed: () {},
            //       color: AppColors.grey,
            //     ),
            //     const SizedBox(
            //       width: 18,
            //     ),
            //     // ElvatedBtn(
            //     //   text: AppStrings.equal,
            //     //   onPressed: () {},
            //     //   height: 92,
            //     // ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
