import 'package:bloc/bloc.dart';

import '../utils/app_strings.dart';
import 'calculator_state.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorInitial());
  late var input = "";
  late double result = 0;
  void clear() {
    input = '';
    result = 0;
    emit(clearState());
  }

  void calculate() {
    String finalInput = input;
    finalInput = finalInput.replaceAll('x', '*');
    // finalInput = finalInput.replaceAll('%', '/100');
    Parser p = Parser();
    Expression exp = p.parse(finalInput);
    ContextModel cm = ContextModel();
    result = exp.evaluate(EvaluationType.REAL, cm);
    input = result.toString();
    emit(calculateState());
  }

  void toggleSign() {
    if (input.isNotEmpty) {
      if (input.startsWith('-')) {
        input =
            '(' + input.substring(1) + ')'; // Remove the '-' sign if it exists
      } else {
        input = '(' + '-' + input + ')'; // Add a '-' sign if it doesn't exist
      }
    }

    emit(SucessState());
  }

  void deleteLastCharacter() {
    if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
    }

    emit(deleteState());
  }

  void handleButtonPressed(String buttonText) {
    if (buttonText == AppStrings.clear) {
      clear();
    } else if (buttonText == AppStrings.equal) {
      calculate();
    } else if (buttonText == 'delete') {
      deleteLastCharacter();
    } else if (buttonText == AppStrings.plus_mins) {
      toggleSign();
    } else {
      input = input + buttonText;
      emit(SucessState());
    }
  }
}
