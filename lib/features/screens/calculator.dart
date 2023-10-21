import 'package:calculator/core/cubit/calculator_cubit.dart';
import 'package:calculator/core/cubit/calculator_state.dart';
import 'package:calculator/core/utils/app_colors.dart';
import 'package:calculator/core/utils/app_strings.dart';
import 'package:calculator/features/widgets/elvated_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BlocBuilder<CalculatorCubit, CalculatorState>(
          builder: (context, state) {
            return Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 335,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        BlocProvider.of<CalculatorCubit>(context).input,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      Text(
                        BlocProvider.of<CalculatorCubit>(context)
                            .result
                            .toString(),
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .deleteLastCharacter;
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed('delete');
                          },
                          icon: const Icon(
                            Icons.backspace_outlined,
                            color: AppColors.white,
                          )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        ElvatedBtn(
                          text: AppStrings.clear,
                          fontSize: 30,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.clear);
                          },
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.seven,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.seven);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.four,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.four);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.one,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.one);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.plus_mins,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.plus_mins);
                          },
                          fontSize: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      children: [
                        ElvatedBtn(
                          text: AppStrings.mod,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.mod);
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.eight,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.eight);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.five,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.five);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.two,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.two);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.zero,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.zero);
                          },
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
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.divide);
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.nine,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.nine);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.six,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.six);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.three,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.three);
                          },
                          color: AppColors.grey,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.dot,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.dot);
                          },
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
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.multiply);
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.minus,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.minus);
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.plus,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.plus);
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ElvatedBtn(
                          text: AppStrings.equal,
                          onPressed: () {
                            BlocProvider.of<CalculatorCubit>(context)
                                .handleButtonPressed(AppStrings.equal);
                          },
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
            );
          },
        ),
      ),
    );
  }
}
