import 'package:calculator/models/calculator_model.dart';
import 'package:calculator/screens/button_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class NumericNotifier extends StateNotifier<CalculatorModel> {
  NumericNotifier() : super(_initialValue);
  
  static const _initialValue = CalculatorModel(
    input: [],
    answer: 0.0, 
    showString: "0",
    currentType: CalcType.Initial, 
    currentDigit: 1.0
  );

  void pressNumber(double number) {
    if(state.currentType == CalcType.Initial){
      double value;
      if (state.input.length > 0) {
        var tmp = state.input.removeLast();
        value = tmp * 10 + number;
      }else{
        value = number.toDouble();
      }
      List<dynamic> newList = [...state.input, value];
      state = CalculatorModel(
        input: newList,
        answer: state.answer,
        showString: makeStringFromList(newList),
        currentType: state.currentType,
        currentDigit: state.currentDigit,
      );
    }else if(state.currentType == CalcType.Dod) {
      double value;
      if(state.input.length > 0) {
        var tmp = state.input.removeLast();
        value = tmp + number * state.currentDigit;
      }else{
        value = 0.0;
      }
      List<dynamic> newList = [...state.input, value];
      state = CalculatorModel(
        input: newList,
        answer: state.answer,
        showString: makeStringFromList(newList),
        currentType: state.currentType,
        currentDigit: state.currentDigit * 0.1,
      );
    }else if(state.currentType == CalcType.Add) {
      
      if(state.input.length > 0) {
        var tmp = state.input.removeLast();
        List<dynamic> newList = [...state.input, tmp*10 + number];
          state = CalculatorModel(
          input: newList,
          answer: calcAnser(newList),
          showString: makeStringFromList(newList),
          currentType: state.currentType,
          currentDigit: state.currentDigit,
        );
      }
    }
  }

  double calcAnser(List<dynamic> li) {
    double tmp = 0.0;
    var process = "";
    for(var i in li) {
      if(i is String){
        process = i;
      }else if(i is double){
        if(tmp == 0){
          tmp = i;
        }else{
          tmp = calc(tmp, process, i);
        }
      }
    }
    return tmp;
  }

  double calc(var a, String b, var c){
    if(b=='+')return a + c;
    if(b=='-')return a - c;
    if(b=='*')return a * c;
    if(b=='/')return a / c;
    return a + b;
  }

  String makeStringFromList(List<dynamic> li) {
    String tmp="";
    for(var i in li) {
      if(i is String){
        tmp = tmp + "$i ";
      }else{
        tmp = tmp + "${i.toString()} ";
      }
    }
    return tmp;
  }

  void pressCalc(CalcType type) {
    if(type == CalcType.Clear) {
      state = CalculatorModel(
        input: [],
        answer: 0.0, 
        showString: "0",
        currentType: CalcType.Initial, 
        currentDigit: 1.0
      );
    }else if(type == CalcType.Dod) {
      state = CalculatorModel(
        input: state.input,
        answer: state.answer,
        showString: makeStringFromList(state.input),
        currentType: CalcType.Dod,
        currentDigit: state.currentDigit * 0.1,
      );
    }else if(type == CalcType.Add) {
      List<dynamic> newList = [...state.input, '+', 0];
      state = CalculatorModel(
        input: newList,
        answer: state.answer,
        showString: makeStringFromList(newList),
        currentType: CalcType.Add,
        currentDigit: state.currentDigit,
      );
    }
  }


}